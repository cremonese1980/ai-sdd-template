| Field | Value |
|---|---|
| Type | Standard |
| Owner | TEMPLATE |
| Status | ACCEPTED |
| Date | 2026-10-04 |
| Authors | Gabri (Human) |
| Origin | "Un documento che stabilisce il formato di tutti i doc di progetto." — Gabri |
| Upstream evidence | Trabotto doc-standard, May–Sep 2026 |

# DOCUMENT STANDARD

## Header table (every document, first lines)
| Field | Allowed values |
|---|---|
| Type | Spec · Design · Tasks · ADR · Manifesto · Process · Standard · Log · Ledger · Runbook · Report · Handoff |
| Owner | TEMPLATE · PROJECT |
| Status | DRAFT · IN PARLIAMENT · SEALED · IMPLEMENTED · DEPLOYED · ACCEPTED · SUPERSEDED |
| Date | ISO date of the last status change |
| Authors | names from the Cast |
| Origin | the human's words, verbatim |
| Upstream evidence | links to the code, data or documents this rests on |

Living documents add a `last_verified` field.

One status vocabulary for every type; no other values. ADRs move DRAFT → IN PARLIAMENT → ACCEPTED, and later to SUPERSEDED.

## Fixed sections (Spec, Design, ADR)
1. Origin
2. Context verified on code — every reference checked; doubts written as `verify: assumption`
3. Decisions — each with why and discarded alternatives
4. Spec — requirements in EARS form: "When <trigger>, the system shall <response>"
5. Out of scope
6. Pre-registered criteria — what is measured, thresholds, minimum window, decided before data
7. Parliamentary summary — what was ratified, by whom, when. Empty means not implementable
8. Revision history
9. Reports — appended by the Implementer, one per round, newest at the bottom

Logs and ledgers use the header plus their own table only.

## Rules
- One fact, one owning file (see docs/INDEX.md). Others link.
- A new document is added to docs/INDEX.md in the same turn.
- English unless PROJECT-MANIFESTO.md names an exception for that file. Never mixed within a file, except verbatim quotes (such as the Origin field) and greeting triggers, which keep their original language.
- Statuses only move forward, except to SUPERSEDED, which names its successor.
