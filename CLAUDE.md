@AGENTS.md
@docs/AGENT-MANIFESTO.md

# CLAUDE.md — Claude-specific settings

Everything shared with other coding agents lives in AGENTS.md. This file adds only what is specific to Claude Code.

## Always
- At every greeting ("good morning", "buongiorno", "hi") run the /standup procedure.
- Whenever a date, deadline or "today/tomorrow" is mentioned, read docs/operational/calendar.md first.
- Before writing any document, read docs/operational/doc-standard.md.
- Before proposing anything that changes a TEMPLATE-owned file, say so explicitly: it is a template change, not a project change.

## Commands
- /parlamento — from an idea to a sealed spec. No code before the seal.
- /standup — the greeting ritual.
- /deploy-log — record a deploy and flip the implementation book.
- /audit-docs — read-only drift check on living documents.

## Rules
Path-scoped rules live in .claude/rules/ and load when matching files are touched:
code-style-java.md for Java and Maven, code-style-python.md for Python, docs.md for documentation.

## Enforcement
.claude/hooks/validate-bash.sh blocks commit, push, merge, rebase, destructive git, `rm -rf`, deploys, remote shells and destructive SQL.
Agent Manifesto rules 14 and 15 are therefore mechanical, not optional. If a command is blocked, put it in the report for the human.
