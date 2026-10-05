| Field | Value |
|---|---|
| Type | Standard |
| Owner | PROJECT |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Implementer |
| Origin | "Rule: a fact is written only in its owning file; other files link to it." — Gabri |
| Upstream evidence | docs/operational/doc-standard.md · .claude/rules/docs.md |

# INDEX

Map of the repository: what every file is, who owns it, which file owns which fact, and who the cast is. A file created, moved or deleted is reflected here in the same turn (.claude/rules/docs.md rule 8).

## 1. File map

| File | Owner | Purpose |
|---|---|---|
| [`README.md`](../README.md) | PROJECT | Project name, one-line purpose, how to build, link to this index |
| [`CLAUDE.md`](../CLAUDE.md) | TEMPLATE | Claude Code only settings; imports AGENTS.md and the Agent Manifesto |
| [`CLAUDE.local.md.example`](../CLAUDE.local.md.example) | TEMPLATE | Example of personal, gitignored Claude Code overrides |
| [`AGENTS.md`](../AGENTS.md) | TEMPLATE | Shared rules for every coding agent: read-first list, roles, non-negotiables, rites |
| [`.mcp.json`](../.mcp.json) | PROJECT | MCP servers: read-only Postgres, command to be resolved per project |
| [`.gitignore`](../.gitignore) | PROJECT | Java/Maven ignores plus worktrees/, tmp/ and personal Claude files |
| [`TEMPLATE_VERSION`](../TEMPLATE_VERSION) | TEMPLATE | Version of the template this repository is built from |
| [`CHANGELOG.md`](../CHANGELOG.md) | TEMPLATE | Changes to TEMPLATE-owned files, one entry per template version |
| [`.claude/settings.json`](../.claude/settings.json) | TEMPLATE | Wires the PreToolUse Bash guard hook |
| [`.claude/hooks/validate-bash.sh`](../.claude/hooks/validate-bash.sh) | TEMPLATE | Blocks, in command position, commit, push, merge, destructive git and rm, deploys, remote shells; destructive SQL anywhere. Guards against accidents, not a security boundary |
| [`.claude/rules/code-style.md`](../.claude/rules/code-style.md) | TEMPLATE | Code rules for Java and Maven files, loaded when they are touched |
| [`.claude/rules/docs.md`](../.claude/rules/docs.md) | TEMPLATE | Document rules for docs/, loaded when they are touched |
| [`.claude/commands/parlamento.md`](../.claude/commands/parlamento.md) | TEMPLATE | /parlamento: from an idea to a sealed spec |
| [`.claude/commands/standup.md`](../.claude/commands/standup.md) | TEMPLATE | /standup: the greeting ritual |
| [`.claude/commands/deploy-log.md`](../.claude/commands/deploy-log.md) | TEMPLATE | /deploy-log: record a deploy and flip the implementation book |
| [`.claude/commands/audit-docs.md`](../.claude/commands/audit-docs.md) | TEMPLATE | /audit-docs: read-only drift check on living documents |
| [`docs/INDEX.md`](INDEX.md) | PROJECT | This file: file map, source of truth, cast |
| [`docs/TEMPLATE.md`](TEMPLATE.md) | TEMPLATE | What the template is, ownership and deviation rule, how to instantiate and upgrade, what the Bash hook is and is not |
| [`docs/ENGINEERING-MANIFESTO.md`](ENGINEERING-MANIFESTO.md) | TEMPLATE | Engineering rules common to every project |
| [`docs/PROJECT-MANIFESTO.md`](PROJECT-MANIFESTO.md) | PROJECT | Purpose, scope, constraints, language policy and deviations of this project |
| [`docs/AGENT-MANIFESTO.md`](AGENT-MANIFESTO.md) | TEMPLATE | Behavioural rules for agents; override everything else |
| [`docs/PROCESS.md`](PROCESS.md) | TEMPLATE | The chunk cycle and the Definition of Done |
| [`docs/ROADMAP.md`](ROADMAP.md) | PROJECT | Direction of the project, with a STATE block |
| [`docs/BACKLOG.md`](BACKLOG.md) | PROJECT | Tasks, one row each |
| [`docs/TODO.md`](TODO.md) | PROJECT | Deferred findings, each with owner and reason |
| [`docs/BRAINSTORM-LOG.md`](BRAINSTORM-LOG.md) | PROJECT | Ledger of brainstorm closures: product decisions |
| [`docs/adr/README.md`](adr/README.md) | TEMPLATE | ADR convention: MADR, NNNN numbering, statuses |
| [`docs/adr/0000-template.md`](adr/0000-template.md) | TEMPLATE | ADR template |
| [`docs/specs/README.md`](specs/README.md) | TEMPLATE | Spec convention: one folder per chunk |
| [`docs/specs/_template/spec.md`](specs/_template/spec.md) | TEMPLATE | Spec template: fixed sections, EARS requirements, reports |
| [`docs/specs/_template/design.md`](specs/_template/design.md) | TEMPLATE | Design template: how, ADR links, discarded alternatives |
| [`docs/specs/_template/tasks.md`](specs/_template/tasks.md) | TEMPLATE | Tasks template: ordered tasks with Given/When/Then |
| [`docs/analysis/ledger.md`](analysis/ledger.md) | PROJECT | Numbered pre-registered analyses |
| [`docs/operational/doc-standard.md`](operational/doc-standard.md) | TEMPLATE | Mandatory document format |
| [`docs/operational/calendar.md`](operational/calendar.md) | PROJECT | Agenda and session thread |
| [`docs/operational/implementation-book.md`](operational/implementation-book.md) | PROJECT | Current state of the code, one row per feature |
| [`docs/operational/deploy-log.md`](operational/deploy-log.md) | PROJECT | Deploys, append-only, newest on top |
| [`docs/operational/deploy-handoff-template.md`](operational/deploy-handoff-template.md) | TEMPLATE | Ten-step deploy handoff template |
| [`docs/operational/prompt-template.md`](operational/prompt-template.md) | TEMPLATE | Seven-point Implementer prompt format |
| [`docs/operational/query.md`](operational/query.md) | PROJECT | Numbered control queries, cited by code |
| [`docs/operational/db-schema.md`](operational/db-schema.md) | PROJECT | Database schema in prose, aligned at every migration |
| [`docs/operational/agent-memory-seed.md`](operational/agent-memory-seed.md) | TEMPLATE | Five feedback lessons to load into agent memory |
| [`docs/operational/MANUAL.md`](operational/MANUAL.md) | PROJECT | Single operational reference |
| [`docs/operational/runbook/README.md`](operational/runbook/README.md) | TEMPLATE | Runbook convention: one file per failure mode |
| [`evals/README.md`](../evals/README.md) | TEMPLATE | Evals convention for product agents |
| `tmp/` | PROJECT | Directory, gitignored: instantiated prompts and scratch files |

## 2. Source of truth

A fact is written only in its owning file; other files link to it.

| Fact type | Owning file |
|---|---|
| Current state of the code | [operational/implementation-book.md](operational/implementation-book.md) |
| Schedule and deadlines | [operational/calendar.md](operational/calendar.md) |
| Direction | [ROADMAP.md](ROADMAP.md) |
| Architectural decisions | [adr/](adr/README.md) |
| Product decisions | [BRAINSTORM-LOG.md](BRAINSTORM-LOG.md) |
| Deferred findings | [TODO.md](TODO.md) |
| Tasks | [BACKLOG.md](BACKLOG.md) |
| Deploys | [operational/deploy-log.md](operational/deploy-log.md) |
| Pre-registered analyses | [analysis/ledger.md](analysis/ledger.md) |
| Recurring queries | [operational/query.md](operational/query.md) |
| Database schema | [operational/db-schema.md](operational/db-schema.md) |
| Purpose, scope, constraints, deviations from template | [PROJECT-MANIFESTO.md](PROJECT-MANIFESTO.md) |
| Names of roles and product agents | this file, § 3 Cast |
| Template version | [`TEMPLATE_VERSION`](../TEMPLATE_VERSION) |

## 3. Cast

Two namespaces: the working team that builds the project, and the product agents the project ships.

### Working team

| Role | Project name | Tool |
|---|---|---|
| Human | | |
| Architect | | |
| Implementer | | |
| Deployer | | |
| Reviewer | | |

### Product agents

| Name | Purpose |
|---|---|
| | |
