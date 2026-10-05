| Field | Value |
|---|---|
| Type | Spec |
| Owner | TEMPLATE |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Implementer |
| Origin | "doc-standard header + fixed sections; requirements in EARS form" — Gabri |
| Upstream evidence | docs/operational/doc-standard.md · docs/specs/README.md |

> Template file. In the copy (docs/specs/<chunk>/spec.md): Owner PROJECT, Status DRAFT, today's date, the human's words in Origin; delete this line.

# SPEC — <chunk name>

Design: [design.md](design.md) · Tasks: [tasks.md](tasks.md)

## 1. Origin
<The human's words, verbatim. Never paraphrased.>

## 2. Context verified on code
<What exists today that this chunk touches. Every class, table, config key or value is referenced as `path:line` read in this session; anything not read is `verify: assumption`.>

## 3. Decisions
| # | Decision | Why | Discarded alternatives |
|---|---|---|---|
| D1 | | | |

## 4. Spec
Requirements in EARS form, numbered, one per line, each testable.

| EARS pattern | Form |
|---|---|
| Event-driven | When <trigger>, the system shall <response>. |
| State-driven | While <state>, the system shall <response>. |
| Unwanted behaviour | If <condition>, then the system shall <response>. |
| Optional feature | Where <feature is included>, the system shall <response>. |
| Ubiquitous | The system shall <response>. |

- R1. When <trigger>, the system shall <response>.

Flag: <flag name>, default off; with the flag off, behaviour is byte-identical, proven by a golden test (Engineering Manifesto 3.7).

## 5. Out of scope
- <what this chunk does not touch, even if it looks wrong; findings go to docs/TODO.md>

## 6. Pre-registered criteria
Decided now, before any data is read. New numbers are ESTIMATE until ratified.

| What is measured | Threshold | Sample gate | Minimum window | Query (operational/query.md) |
|---|---|---|---|---|

## 7. Parliamentary summary
<Decisions ratified, by whom, when, with which corrections. Empty means this spec is not implementable.>

## 8. Revision history
| Version | Date | Change |
|---|---|---|

## 9. Reports
<Appended by the Implementer, one per round, newest at the bottom.>

<!-- Report format, copy below the latest report:
### Report — round <n> — YYYY-MM-DD
- Done:
- Not done, with reason:
- Deviations to ratify:
- Tests: <counts from mvn clean verify>
- Proposed commit message: <one line, ASCII, no quotes, parentheses or metacharacters>
-->
