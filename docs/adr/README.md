| Field | Value |
|---|---|
| Type | Standard |
| Owner | TEMPLATE |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Implementer |
| Origin | "MADR convention, numbering NNNN, statuses proposed / accepted / superseded" — Gabri |
| Upstream evidence | MADR, https://adr.github.io/madr/ · docs/operational/doc-standard.md |

# ARCHITECTURE DECISION RECORDS

Owning folder for architectural decisions. Product decisions live in docs/BRAINSTORM-LOG.md.

## Convention
- Format: MADR (Markdown Architectural Decision Records), adapted to the doc standard. Every ADR starts with the doc-standard header table and keeps the fixed sections in the doc-standard order; the MADR parts sit inside them (see 0000-template.md):
  - Context and problem statement, decision drivers → 2. Context verified on code
  - Considered options, decision outcome, pros and cons of the options → 3. Decisions
  - Consequences → 4. Spec
  - Confirmation → 6. Pre-registered criteria
- One decision per file.

## Numbering
- File name: `NNNN-short-title-with-dashes.md`, four digits, zero-padded, sequential.
- Numbers are never reused, not even for an abandoned proposal.
- 0000 is the template, not a decision.

## Statuses
The doc-standard vocabulary, written in the header `Status` field:
- **DRAFT** — being written.
- **IN PARLIAMENT** — options and a default presented to the Human, awaiting ratification. The Parliamentary summary is empty.
- **ACCEPTED** — ratified by the Human; the Parliamentary summary says by whom and when.
- **SUPERSEDED** — replaced by a later ADR. The `Status` field names the successor (`SUPERSEDED by NNNN`) and the successor names what it supersedes in its Decisions section.

Statuses only move forward. An accepted ADR is never edited to change the decision; a new ADR supersedes it.

## Workflow
1. Copy 0000-template.md to the next free number; status DRAFT.
2. Fill it; status IN PARLIAMENT when it goes to the Human.
3. Ratification by the Human: Parliamentary summary filled, status ACCEPTED, revision history entry.
4. Add the file to docs/INDEX.md in the same turn it is created.
