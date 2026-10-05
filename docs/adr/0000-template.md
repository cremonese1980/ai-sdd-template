| Field | Value |
|---|---|
| Type | ADR |
| Owner | TEMPLATE |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Implementer |
| Origin | "adr/0000-template.md — MADR template" — Gabri |
| Upstream evidence | MADR, https://adr.github.io/madr/ · docs/adr/README.md · docs/operational/doc-standard.md |

> Template file. In the copy: Owner PROJECT, Status DRAFT, today's date, the human's words in Origin; delete this line.

# NNNN — <short title: the problem solved and the solution chosen>

## 1. Origin
<The human's words that asked for this decision, verbatim. Never paraphrased.>

## 2. Context verified on code

### Context and problem statement
<Two or three sentences: the situation and the question to decide. Every class, table, config key or value is referenced as `path:line` read in this session; anything not read is `verify: assumption`.>

### Decision drivers
- <force, constraint or quality attribute that drives the decision>

## 3. Decisions

### Considered options
1. <option 1>
2. <option 2>
3. <option 3>

### Decision outcome
Chosen option: "<option N>", because <which drivers it satisfies and which it trades off>.
Supersedes: <NNNN, or none>.

### Pros and cons of the options

#### <option 1>
- Good, because <argument>
- Bad, because <argument>

#### <option 2>
- Good, because <argument>
- Bad, because <argument>

## 4. Spec

### Consequences
- Good, because <positive consequence>
- Bad, because <negative consequence, cost, or new risk>

### Binding rules
Rules that follow from the decision, in EARS form:
- When <trigger>, the system shall <response>.

## 5. Out of scope
- <what this ADR deliberately does not decide>

## 6. Pre-registered criteria

### Confirmation
<How compliance with this decision is checked (review rule, test, build check), and what would show the decision was wrong: what is measured, threshold, minimum window — decided now, before any data is read. New numbers are ESTIMATE until ratified.>

## 7. Parliamentary summary
<Ratified by whom, when, with which corrections. Empty means the ADR is not ACCEPTED.>

## 8. Revision history
| Version | Date | Change |
|---|---|---|

## 9. Reports
<Normally empty for an ADR: implementation reports are appended to the spec that implements the decision.>
