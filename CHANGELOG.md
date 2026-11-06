# Changelog

All notable changes to this template are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Every change to a TEMPLATE-owned file bumps TEMPLATE_VERSION and adds an entry here.

## [0.3.1] - 2026-11-06

### Added
- docs/ENGINEERING-MANIFESTO.md: 5.8 Readability, code written for the human who reads it next, tested by a cold review plus a complexity ceiling in the linter; 5.9 Traceability, every requirement names its test and every test its requirement, every bug fix ships with the test that reproduced it. Ratified by the Human on 2026-11-06.
- .claude/rules/code-style-python.md rules 28 and 29 and code-style-java.md rules 27 and 28: the complexity ceiling (for example ruff C901, Checkstyle CyclomaticComplexity; 10 ESTIMATE) and the requirement id on every test.

### Changed
- The report format carries a requirements to tests map (5.9): AGENTS.md Rites, docs/PROCESS.md step 4 and Definition of Done, docs/operational/prompt-template.md point 7, docs/specs/_template/spec.md report block, .claude/rules/docs.md rule 6.

## [0.3.0] - 2026-10-14

### Added
- docs/ENGINEERING-MANIFESTO.md: 3.11 ports with fakes for third-party dependencies, 3.12 ubiquitous language, 3.13 bounded contexts with the runtime never importing a product, 3.14 scale declared per design choice, 3.15 written fallbacks, 4.6 tenant_id and tenant isolation by construction, 5.6 eval set as release gate, 5.7 reproducibility, section 9 Performance (9.1 to 9.5), section 10 Agent conduct (10.1 tool registry with effect classes and promotion, 10.2 honesty). Status ACCEPTED, ratified by the Human on 2026-10-14.
- docs/GLOSSARY.md: skeleton of the ubiquitous language, PROJECT-owned, one row per term; rows in the docs/INDEX.md file map and source of truth.

### Changed
- docs/ENGINEERING-MANIFESTO.md: 3.1, 3.4, 3.5, 3.8 tightened; 3.7 off value of multi-valued flags; 5.1 defines a real dependency; 6.3 acting under per-action human approval is the observation window. Lessons applied from the agentic project: L-004, L-007, L-008; L-006 for this file only.
- docs/PROJECT-MANIFESTO.md skeleton: the page limit replaced by a structural rule (lesson L-009); lines for the latency budget (9.1), the tool registry and promoted effect classes (10.1), the tenant definition (4.6). PROJECT-owned, so existing projects add them by hand.
- .claude/rules/code-style-python.md and code-style-java.md: the import checker named as an example (import-linter, ArchUnit) for 3.1; Python rule 27 points to 5.1 for third-party APIs.

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
