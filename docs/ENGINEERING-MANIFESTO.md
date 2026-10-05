| Field | Value |
|---|---|
| Type | Manifesto |
| Owner | TEMPLATE |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Architect |
| Origin | "Un manifesto di ingegneria da definire molto dettagliatamente e meticolosamente." — Gabri |
| Upstream evidence | Five months of working method on Trabotto and TriageMate |

# ENGINEERING MANIFESTO

Common to every project built from this template. A project may tighten these rules in its PROJECT-MANIFESTO; it may relax one only as a declared deviation.

## 1. Process
1.1 No code before a sealed spec. The spec is the contract; the code is its implementation.
1.2 One chunk at a time. The next chunk starts when the reviewer is silent on the current one.
1.3 Decisions carry their why and their discarded alternatives. A decision without alternatives was not a decision.
1.4 Decisions are never downgraded, upgraded or merged by inference. Evidence, ratification, then writing.
1.5 Every deviation from the spec is declared by whoever made it, before review finds it.
1.6 Review is adversarial by design. Every finding is accepted or rejected with evidence, never ignored.
1.7 The human holds the irreversible actions: commit, merge, deploy, data changes in production.

## 2. Truth and measurement
2.1 Nothing is written that was not verified. Unverified statements carry `verify: assumption`.
2.2 Criteria before data. Thresholds, sample gate and minimum window are written before any result is read.
2.3 No promotion from a single simulation. Every candidate is confirmed on at least two independent time folds.
2.4 Every new number is an ESTIMATE until ratified. No invented thresholds.
2.5 Every ratification states its real-world impact: zero, or what changes and for whom.
2.6 The business metric comes first. A service that is up and that nobody can use is down.

## 3. Architecture
3.1 Hexagonal. The domain is pure: no framework, no IO, no clock it does not receive.
3.2 Rules, policies, prompts and thresholds are data: versioned, diffable, replayable.
3.3 Deterministic before probabilistic. Deterministic invariants filter first; a model chooses within what is left; deterministic validation checks the result; only then an effect is authorised.
3.4 Model output is untrusted input, always.
3.5 Every side effect is idempotent and goes through an outbox. At-least-once delivery is assumed everywhere.
3.6 Every decision is traceable and replayable: input, rule version, model version, output, cost.
3.7 Every feature ships behind a flag, default off, byte-identical with the flag off, proven by a golden test.
3.8 Fail-fast at boot on bad configuration. Fail-open only in observation paths, and declared.
3.9 Flexibility must name its second use case today. If it cannot, build the simplest thing that works and put it in front of whoever decides.
3.10 A kill switch exists for every component that acts on the world.

## 4. Data and security
4.1 Secrets never appear in code, chat, prompts, logs or reports.
4.2 Personal data is minimised, masked before it reaches a model when possible, never logged in clear.
4.3 Retention is declared per data type. What has no declared retention is not stored.
4.4 Production access by agents is read-only.
4.5 Migrations are additive. Applied migrations are never edited.

## 5. Quality
5.1 `mvn clean verify` with real dependencies (Testcontainers) is green before any report.
5.2 Tests assert behaviour and invariants, not implementation details.
5.3 Javadoc states contract, invariants and why. Boilerplate is forbidden.
5.4 A version marker is bumped whenever verdicts or persisted evidence change. Never silently.
5.5 Observability is designed with the feature: what will tell us, at 3 a.m., that this is broken?

## 6. Operations
6.1 Every deploy follows a written handoff: pre-flight, backup, new artefact name, one line changed in the launch script, kill and verify as separate commands, expected boot lines, census before and after, rollback.
6.2 Every deploy is logged and flips the implementation book.
6.3 Every new feature has an observation window with pre-registered criteria before it is allowed to act.
6.4 One runbook per known failure mode.

## 7. Documentation
7.1 Every document follows the doc standard.
7.2 Every fact has one owning file. Others link, never copy.
7.3 Living documents carry `last_verified` and are audited against the code.
7.4 A document nobody reads is deleted, not maintained.

## 8. How we work
8.1 The way a project is run is itself a governed agent system: parliament, sealed spec, fixed prompt, adversarial review, ratification with evidence. The same governance we put into the products, we apply to ourselves.

## Revision history
| Version | Date | Change |
|---|---|---|
| 0.1.0 | 2026-10-04 | Initial version |
