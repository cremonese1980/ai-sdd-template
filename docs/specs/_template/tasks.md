| Field | Value |
|---|---|
| Type | Tasks |
| Owner | TEMPLATE |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Implementer |
| Origin | "ordered tasks, each with acceptance criteria in Given/When/Then" — Gabri |
| Upstream evidence | docs/operational/doc-standard.md · docs/specs/README.md |

> Template file. In the copy (docs/specs/<chunk>/tasks.md): Owner PROJECT, Status DRAFT, today's date; delete this line.

# TASKS — <chunk name>

Spec: [spec.md](spec.md) · Design: [design.md](design.md)

Tasks are done in order. Each task names the requirements it closes and its acceptance criteria in Given/When/Then; every criterion becomes at least one test.

## T1 — <title>
- [ ] done
- Requirements: R1
- Files: <paths expected to change>
- Acceptance criteria:
  - Given <context>, when <action>, then <observable outcome>.

## T2 — <title>
- [ ] done
- Requirements: R2
- Files: <paths expected to change>
- Acceptance criteria:
  - Given <context>, when <action>, then <observable outcome>.

## Revision history
| Version | Date | Change |
|---|---|---|
