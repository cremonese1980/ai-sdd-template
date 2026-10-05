| Field | Value |
|---|---|
| Type | Process |
| Owner | TEMPLATE |
| Status | ACCEPTED |
| Date | 2026-10-04 |
| Authors | Gabri (Human) |
| Origin | The chunk cycle used on Trabotto since May 2026 |
| Upstream evidence | Typical medium chunk: one Implementer day, three to six review rounds, two calendar days |

# PROCESS — the chunk cycle

1. **Parliament.** The Architect proposes the decisions with a default each; the Human ratifies ("yes to all") or corrects. Every decision has its why and its discarded alternatives. (/parlamento)
2. **Sealed spec.** Spec in doc-standard format, first IN PARLIAMENT, then SEALED. No code before the seal.
3. **Prompt.** The Architect writes the Implementer prompt from operational/prompt-template.md: seven fixed points.
4. **Implementation.** The Implementer implements, runs the build and the integration tests with real dependencies, and appends the report to the spec: done and not done with reason, deviations to ratify, test numbers, proposed commit message.
5. **Commit.** The Human commits with explicit paths, pushes, opens the PR. The Reviewer comments.
6. **Fix list.** The Human pastes report and findings to the Architect, who writes the round's fix list: ratifies deviations, accepts or rejects each finding with evidence, amends the spec, updates the calendar.
7. **Repeat** until the Reviewer is silent. Then final report, PR description, merge, implementation-book entry.
8. **Deploy** with the Deployer from a written handoff (operational/deploy-handoff-template.md). Deployer report, deploy-log row, implementation book flipped to DEPLOYED. (/deploy-log)
9. **Observation** with pre-registered criteria. Readings produce findings; findings produce the next spec.

## Definition of Done
- Spec SEALED, Parliamentary summary filled.
- Build and integration tests with real dependencies green.
- Report appended to the spec, every deviation ratified or reverted.
- Reviewer silent.
- implementation-book.md and docs/INDEX.md updated.
- Calendar updated with the observation window, if the chunk acts on the world.
