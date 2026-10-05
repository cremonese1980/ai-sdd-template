# Changelog

All notable changes to this template are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Every change to a TEMPLATE-owned file bumps TEMPLATE_VERSION and adds an entry here.

## [0.2.0] - 2026-10-05

### Added
- .claude/rules/code-style-python.md: code rules for Python files and pyproject.toml, same principles as the Java rules; tools are named as examples, never as requirements.
- .claude/hooks/test-validate-bash.sh: regression test for the Bash guard hook, the full case table, non-zero exit on any failure.

### Changed
- Language-neutral core: ENGINEERING-MANIFESTO 5.1 and 5.3, PROCESS step 4 and Definition of Done, AGENTS.md Rites, the TEMPLATE.md introduction, the AGENTS.md roles row, the spec template report line. AGENTS.md Rites points to PROJECT-MANIFESTO → Rites.
- docs/PROJECT-MANIFESTO.md skeleton: new section 12 Rites, empty: build, full tests with real dependencies, formatter, run. PROJECT-owned, so existing projects add it by hand.
- .claude/rules/code-style.md renamed to code-style-java.md; CLAUDE.md and docs/INDEX.md updated.
- .claude/hooks/validate-bash.sh: also blocks ./mvnw and mvnw with deploy or release goals, twine upload, uv publish, poetry publish.

## [0.1.2] - 2026-10-05

### Added
- docs/LESSONS-LEARNED.md: ledger of template improvements discovered while working on a project, shipped with an empty table.

### Changed
- docs/TEMPLATE.md: new instantiation step 1, apply the OPEN lessons of the previous project to the template before copying; the following steps renumbered.

## [0.1.1] - 2026-10-05

### Added
- MIT LICENSE.

### Changed
- docs/TEMPLATE.md: new instantiation step 4, choose the project license.

## [0.1.0] - 2026-10-04

### Added
- Initial kit: docs-first project template for projects built with governed AI agents.
- docs/TEMPLATE.md: what the template is, ownership and deviation rule, how to instantiate and upgrade, what the Bash hook is and is not. README.md is a PROJECT-owned skeleton.
- Agent rules: AGENTS.md (shared by every coding agent) and CLAUDE.md (Claude Code only).
- Manifestos: ENGINEERING-MANIFESTO.md and AGENT-MANIFESTO.md (TEMPLATE-owned), PROJECT-MANIFESTO.md skeleton (PROJECT-owned).
- Process: PROCESS.md (the chunk cycle) and docs/operational/doc-standard.md (mandatory document format).
- Claude Code configuration: Bash guard hook (.claude/hooks/validate-bash.sh, matching in command position, against accidents) wired in .claude/settings.json, path-scoped rules for Java/Maven and docs, commands /parlamento, /standup, /deploy-log, /audit-docs.
- Living-document skeletons: ROADMAP, BACKLOG, TODO, BRAINSTORM-LOG, calendar, implementation book, deploy log, query catalogue, db schema, manual, runbook folder, analysis ledger.
- Templates: ADR (MADR), spec / design / tasks, deploy handoff, Implementer prompt, agent memory seed.
- Evals convention for product agents (evals/README.md).
- Read-only Postgres MCP server entry in .mcp.json, command left as a placeholder.
