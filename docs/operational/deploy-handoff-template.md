| Field | Value |
|---|---|
| Type | Handoff |
| Owner | TEMPLATE |
| Status | ACCEPTED |
| Date | 2026-10-04 |
| Authors | Gabri (Human) |
| Origin | The deploy ritual used on Trabotto |
| Upstream evidence | operational/deploy-log.md |

# DEPLOY HANDOFF — template

Written by the Architect, executed by the Human with the Deployer, one step at a time.

1. **What and why**: version, commit, specs included, flags and their default.
2. **Pre-flight**: build green, disk space, current version running, open incidents.
3. **Backup**: what, where, how to verify it.
4. **Artefact**: new name, never overwrite the running one.
5. **Launch script**: exactly one line changed, shown as a diff.
6. **Stop**: the kill command, alone. Then verify it stopped, as a separate command.
7. **Start** and the **expected boot lines**, verbatim.
8. **Census before and after**: the queries (by code from query.md) and the expected values.
9. **Rollback**: the exact commands, and the condition that triggers it.
10. **Report**: what the Deployer writes back, and where.
