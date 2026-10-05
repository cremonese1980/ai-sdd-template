---
paths:
  - "docs/**/*.md"
---
# DOCUMENT STANDARD (rule form)

Applies to every file under docs/. The full standard is docs/operational/doc-standard.md; this file is the enforceable summary.

1. Every document opens with the header table defined in doc-standard.md, `Owner` field included.
2. Spec, Design and ADR documents only, as in doc-standard.md: fixed sections, in this order: Origin · Context verified on code · Decisions (each with why and discarded alternatives) · Spec · Out of scope · Pre-registered criteria · Parliamentary summary · Revision history · Reports. Every other type uses the header plus its own structure; log-type and ledger-type documents use only the header and their own table.
3. An empty Parliamentary summary means the document is not implementable. Do not write code from it.
4. Every reference to a class, table, config key or value is checked against the code while writing. On doubt write `verify: assumption`, never a guess.
5. Decisions are never downgraded, upgraded or merged by inference. Chain of evidence in chat → ratification → then written.
6. Implementation reports are appended to the spec they belong to, newest at the bottom: done, not done with reason, deviations to ratify, test numbers, proposed commit message.
7. Living documents (calendar, roadmap, backlog, logs) carry `last_verified:`; update it only after checking against implementation-book.md and git log.
8. Create a document → add its line to docs/INDEX.md in the same turn.
9. TEMPLATE-owned documents are not edited in a project. A project deviation is recorded in PROJECT-MANIFESTO.md.
10. Language: English, unless PROJECT-MANIFESTO.md allows another language for a named file. Never mixed within one file, except verbatim quotes (such as the Origin field) and greeting triggers, which keep their original language.
