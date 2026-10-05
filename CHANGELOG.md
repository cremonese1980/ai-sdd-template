# Changelog

All notable changes to this template are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Every change to a TEMPLATE-owned file bumps TEMPLATE_VERSION and adds an entry here.

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
