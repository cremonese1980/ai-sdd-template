| Field | Value |
|---|---|
| Type | Design |
| Owner | TEMPLATE |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Implementer |
| Origin | "how, ADR links, discarded alternatives" — Gabri |
| Upstream evidence | docs/operational/doc-standard.md · docs/specs/README.md |

> Template file. In the copy (docs/specs/<chunk>/design.md): Owner PROJECT, Status DRAFT, today's date; delete this line.

# DESIGN — <chunk name>

Spec: [spec.md](spec.md) · Tasks: [tasks.md](tasks.md)

## 1. Origin
See [spec.md § 1](spec.md#1-origin). Not copied.

## 2. Context verified on code
<The code this design builds on: modules, ports, adapters, tables, config keys, each as `path:line` read in this session; anything not read is `verify: assumption`.>

## 3. Decisions
| # | Decision | Why | Discarded alternatives | ADR |
|---|---|---|---|---|
| D1 | | | | [NNNN](../../adr/NNNN-title.md) |

A decision that outlives this chunk becomes an ADR in docs/adr/ and is linked here, not repeated.

## 4. Spec
How the requirements of spec.md are met.

### Components
<Domain, ports, adapters touched or added. Dependencies point inward.>

### Data
<Tables, migrations (additive), messages and their idempotency keys. Align operational/db-schema.md in the same change.>

### Flags and configuration
<Flag name, default off; config keys with their validation.>

### Failure modes and observability
<What can fail, what the logs and metrics show, how it is switched off.>

### Requirement trace
| Requirement | Where it is met |
|---|---|
| R1 | |

## 5. Out of scope
- <what this design deliberately does not change>

## 6. Pre-registered criteria
See [spec.md § 6](spec.md#6-pre-registered-criteria). Not copied.

## 7. Parliamentary summary
<Design decisions ratified, by whom, when. Empty means this design is not implementable.>

## 8. Revision history
| Version | Date | Change |
|---|---|---|

## 9. Reports
Reports are appended to [spec.md § 9](spec.md#9-reports), not here.
