# /deploy-log — record a deploy

Input: the Deployer's report.

1. Append a row at the top of docs/operational/deploy-log.md: date, artefact name, version, git commit, who, result, rollback point, link to the report.
2. Flip the matching entry in docs/operational/implementation-book.md to DEPLOYED with the version.
3. Add a calendar entry for the observation window with its pre-registered criteria.
4. End with the list of files touched and a one-line commit message.
