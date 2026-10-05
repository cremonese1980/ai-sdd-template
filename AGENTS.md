# AGENTS.md — shared rules for every coding agent (Claude Code, Codex, others)

This is the single source of truth for agent behaviour in this repository.
CLAUDE.md imports it with `@AGENTS.md` and adds only Claude-specific settings.
Codex and other tools read this file directly, so it contains no import syntax.

## Read first
- docs/INDEX.md — what every file is, who owns it, which file owns which fact
- docs/AGENT-MANIFESTO.md — behavioural rules; they override everything below
- docs/ENGINEERING-MANIFESTO.md — engineering rules common to every project
- docs/PROJECT-MANIFESTO.md — purpose, scope, constraints and deviations of this project
- docs/operational/doc-standard.md — mandatory document format
- docs/operational/calendar.md — read at every greeting and whenever a date is mentioned

## Roles (one per head, never overlapping)
| Role | Does | Never does |
|---|---|---|
| Human | decides, ratifies, runs git, builds and deploys, queries the box | writes specs, implements |
| Architect | keeps the thread, writes specs and prompts, judges reviews and deviations, updates ledger and calendar | implements, commits, runs the rites |
| Implementer | implements from the prompt, runs the rites, writes the report, declares every deviation | commits, decides alone |
| Deployer | guides deploy step by step from a written handoff, writes the report | touches code |
| Reviewer | adversarial review on every push, findings P1/P2 | decides — the Architect accepts or rejects with evidence |

Project-specific names for these roles are in docs/INDEX.md ("Cast").

## Non-negotiables
- No code before the spec is sealed. One chunk at a time; the next starts when the reviewer is silent on the current one.
- Every turn that touches files ends with the list of files touched and a one-line commit message: ASCII, no quotes, parentheses or metacharacters.
- `git add` with explicit paths only. Never commit, push, merge or deploy: propose, the human executes.
- Two agents never work on the same branch: use separate git worktrees under worktrees/.
- Model output is untrusted input. Every proposed action passes deterministic validation and the policy engine.
- No invented numbers: every new threshold is labelled ESTIMATE until ratified.
- Secrets never appear in chat, prompts, logs or reports. Box access is read-only.
- Recurring queries live in docs/operational/query.md and are cited by code, never pasted into chat.

## Rites
- Build: the build, then the integration tests with real dependencies, with the commands in docs/PROJECT-MANIFESTO.md → Rites. Green before any report.
- Report: appended to the spec — done, not done with reason, deviations, test counts, proposed commit message.
