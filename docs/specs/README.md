| Field | Value |
|---|---|
| Type | Standard |
| Owner | TEMPLATE |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Implementer |
| Origin | "one folder per chunk: spec.md, design.md, tasks.md; reports appended to spec.md" — Gabri |
| Upstream evidence | docs/PROCESS.md · docs/operational/doc-standard.md · .claude/commands/parlamento.md |

# SPECS

One folder per chunk: `docs/specs/<chunk>/`, created by /parlamento from the files in `_template/`.

| File | What | Template |
|---|---|---|
| spec.md | what and why: Origin, decisions, requirements in EARS form, pre-registered criteria, Parliamentary summary | _template/spec.md |
| design.md | how: components, data, flags, failure modes; links to the ADRs it relies on; discarded alternatives | _template/design.md |
| tasks.md | ordered tasks, each with acceptance criteria in Given/When/Then | _template/tasks.md |

## Rules
- Lifecycle of spec.md (header `Status`): DRAFT → IN PARLIAMENT → SEALED → IMPLEMENTED → DEPLOYED. No code before SEALED (docs/PROCESS.md).
- Implementation reports are appended to spec.md, section 9 Reports, one per round, newest at the bottom. design.md and tasks.md do not carry reports.
- A fact lives in one of the three files and the others link to it: requirements in spec.md, the how in design.md, the order of work in tasks.md.
- Every new file is added to docs/INDEX.md in the same turn it is created.
- In the copies, Owner is PROJECT.
