# /audit-docs — drift check, read-only

1. For every living document (calendar, ROADMAP, BACKLOG, TODO, implementation-book, deploy-log, db-schema), compare `last_verified` with `git log -1 --format=%cs -- <file>` and with the latest merged work.
2. List files present in the repository but missing from docs/INDEX.md, and INDEX lines pointing to missing files.
3. List facts written outside their owning file (see INDEX source-of-truth table).
4. Check db-schema.md against the latest migration number.
5. Output a table: file | problem | evidence | proposed fix. Propose; do not fix.
