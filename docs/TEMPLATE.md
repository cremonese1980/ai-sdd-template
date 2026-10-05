| Field | Value |
|---|---|
| Type | Standard |
| Owner | TEMPLATE |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Implementer |
| Origin | "Move the current template instructions to docs/TEMPLATE.md, Owner TEMPLATE, with the doc-standard header." — Gabri |
| Upstream evidence | README.md of the 0.1.0 draft · fix list of 2026-10-04 |

# TEMPLATE — ai-sdd-template

A docs-first kit for projects built with governed AI agents. Before any code exists, a project made from this template already has its rules (manifestos, agent instructions, a document standard), its process (the chunk cycle: parliament, sealed spec, fixed prompt, adversarial review, ratification with evidence), and the mechanical guards that keep coding agents inside that process. The kit contains documents and agent configuration only, no code; its engineering rules assume Java 21, Spring Boot 3 and Maven (see `.claude/rules/code-style.md`).

It is used for personal projects first (Giorgio, Vilma), then at work. Everything in the kit is in English, except verbatim quotes and greeting triggers, which keep their original language; a project may allow another language only for files it names in `docs/PROJECT-MANIFESTO.md` → *Language policy*.

## Two kinds of files

Every file has an owner, shown in the `Owner` field of its header and in the file map of `docs/INDEX.md`.

- **TEMPLATE-owned** — identical in every project. Changed only in the template repository, with a `TEMPLATE_VERSION` bump and a `CHANGELOG.md` entry.
- **PROJECT-owned** — shipped as a skeleton, filled per project.

**Deviation rule.** A project that needs to deviate from a TEMPLATE-owned file records it in `docs/PROJECT-MANIFESTO.md` → *Deviations from template*. It never silently edits the file.

## Instantiate a new project

In order:

1. Apply the OPEN lessons from the previous project's `docs/LESSONS-LEARNED.md` to this template, bump `TEMPLATE_VERSION`, add the CHANGELOG entry, mark the applied lessons APPLIED in vX.Y.Z in the previous project's ledger, then copy.
2. Copy the repository (GitHub "Use this template", or a plain copy without `.git/`).
3. Fill `docs/PROJECT-MANIFESTO.md`.
4. Fill `README.md`: project name, the purpose sentence of `docs/PROJECT-MANIFESTO.md` §1, how to build.
5. Choose the project license: keep MIT and update the copyright line, or replace LICENSE.
6. Fill the Cast tables in `docs/INDEX.md`.
7. Write the first entry in `docs/operational/calendar.md`.
8. Write the first document in the doc-standard format (`docs/operational/doc-standard.md`).
9. `chmod +x .claude/hooks/validate-bash.sh`
10. Open Claude Code at the repository root and run `/standup`.

## Upgrade a project to a new template version

1. Read `CHANGELOG.md` from the project's `TEMPLATE_VERSION` to the new one.
2. Diff the TEMPLATE-owned files only (Owner = TEMPLATE in the `docs/INDEX.md` file map) and apply the changes.
3. PROJECT-owned files are never overwritten. `.gitignore` is PROJECT-owned: if the new version changes its "Template kit" block, merge that block by hand and keep the rest.
4. Re-check every row of *Deviations from template* in `docs/PROJECT-MANIFESTO.md` against the new version.
5. Copy the new `TEMPLATE_VERSION` into the project.

## The Bash guard hook

`.claude/hooks/validate-bash.sh` stops a coding agent from running, by accident, the commands reserved for the human: commit, push, merge, destructive git and `rm`, deploys, remote shells, destructive SQL. It guards against accidents; it is not a security boundary, and a determined or confused agent can get around it (a command after `&`, inside `$( )`, behind `sudo` or `bash -c`). The real boundary is elsewhere: branch protection on `main`, no production credentials on the development machine, and read-only database users for every agent.

## Costly lessons this kit exists to prevent

- Stale version markers in artefacts.
- A catalogue entry never updated after a corpus change.
- `git add` of a whole folder with two agents on the same branch.
- Reading data before writing the criteria.
- A roadmap nobody re-verified.
