#!/usr/bin/env bash
# PreToolUse guard for Bash. Enforces Agent Manifesto rules 14 and 15 mechanically:
# the agent proposes, the human executes. Exit 2 blocks the command and
# returns the reason to the agent; exit 0 allows it.
# It guards against accidents; it is not a security boundary (see docs/TEMPLATE.md).
set -euo pipefail

input=$(cat)
if command -v jq >/dev/null 2>&1; then
  cmd=$(jq -r '.tool_input.command // ""' <<<"$input")
else
  cmd=$(python3 -c 'import sys,json; print(json.load(sys.stdin).get("tool_input",{}).get("command",""))' <<<"$input")
fi

block() {
  echo "Blocked by .claude/hooks/validate-bash.sh: matches '$1'. Propose the command in your report; the human executes it." >&2
  exit 2
}

# Matched only in command position: at the start of a line or after ; && || |,
# once leading blanks and git global options (-C <path>, -c <key=value>) are removed.
# Case-sensitive, so that `git branch -d` (merged branches only) stays allowed.
deny_command=(
  '^git[[:space:]]+commit'
  '^git[[:space:]]+push'
  '^git[[:space:]]+merge'
  '^git[[:space:]]+rebase'
  '^git[[:space:]]+reset[[:space:]]+--hard'
  '^git[[:space:]]+checkout[[:space:]]+--'
  '^git[[:space:]]+checkout[[:space:]]+\.([[:space:]]|$)'
  '^git[[:space:]]+add[[:space:]]+(\.|-A|--all)([[:space:]]|$)'
  '^git[[:space:]]+tag'
  '^git[[:space:]]+clean'
  '^git[[:space:]]+restore'
  '^git[[:space:]]+branch[[:space:]](.*[[:space:]])?-D([[:space:]]|$)'
  '^git[[:space:]]+stash[[:space:]]+drop'
  '^rm[[:space:]](.*[[:space:]])?(-[[:alpha:]]*f[[:alpha:]]*|--force)([[:space:]]|$)'
  '^find[[:space:]](.*[[:space:]])?-delete([[:space:]]|$)'
  '^mvn[[:space:]](.*[[:space:]])?(deploy|release)(:[^[:space:]]*)?([[:space:]]|$)'
  '^docker[[:space:]]+(system[[:space:]]+prune|rm|rmi|volume[[:space:]]+rm)'
  '^scp[[:space:]]'
  '^rsync[[:space:]]'
  '^ssh[[:space:]]'
  '^systemctl'
  '^kill[[:space:]]'
  '^pkill'
)

# Matched anywhere in the command, case-insensitive: SQL travels inside a client
# argument (psql -c "...") and a download piped into a shell spans the pipe.
sql_object='(TABLE|SCHEMA|DATABASE|INDEX|VIEW|MATERIALIZED|SEQUENCE|FUNCTION|PROCEDURE|TRIGGER|TYPE|ROLE|USER|EXTENSION)'
deny_anywhere=(
  "(DROP|ALTER)[[:space:]]+${sql_object}[[:space:]]"
  'TRUNCATE[[:space:]]+[[:alpha:]_"]'
  'DELETE[[:space:]]+FROM[[:space:]]'
  'curl[[:space:]].*\|[[:space:]]*(ba)?sh'
)

for pat in "${deny_anywhere[@]}"; do
  if grep -Eiq -- "$pat" <<<"$cmd"; then
    block "$pat"
  fi
done

segments=${cmd//&&/$'\n'}
segments=${segments//||/$'\n'}
segments=${segments//;/$'\n'}
segments=${segments//|/$'\n'}

# One shell word: unquoted characters and quoted chunks, e.g. "my dir" or user.name='A B'.
word=$'([^[:space:]"\']|"[^"]*"|\'[^\']*\')+'
git_global_option="^git[[:space:]]+-[Cc][[:space:]]+${word}"

while IFS= read -r seg; do
  seg=${seg#"${seg%%[![:space:]]*}"}
  while [[ $seg =~ $git_global_option ]]; do
    seg="git${seg:${#BASH_REMATCH[0]}}"
  done
  for pat in "${deny_command[@]}"; do
    if grep -Eq -- "$pat" <<<"$seg"; then
      block "$pat"
    fi
  done
done <<<"$segments"

exit 0
