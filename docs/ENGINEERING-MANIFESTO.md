| Field | Value |
|---|---|
| Type | Manifesto |
| Owner | TEMPLATE |
| Status | ACCEPTED |
| Date | 2026-10-14 |
| Authors | Gabri (Human), Architect |
| Origin | "Un manifesto di ingegneria da definire molto dettagliatamente e meticolosamente." · "Una cosa importante da aggiungere sempre al manifesto: il codice deve essere il + possibile leggibile a occhio da un umano." — Gabri |
| Upstream evidence | Five months of working method on Trabotto and TriageMate · parliament of 2026-10-14 on agentic: "gli agenti diventeranno prodotti SaaS da scalare; la disciplina si fissa prima che il codice del runtime cresca." — Gabri |

# ENGINEERING MANIFESTO

Common to every project built from this template. A project may tighten these rules in its PROJECT-MANIFESTO; it may relax one only as a declared deviation. Every rule names its test; where the test is a design review and not a mechanical check, the rule says so. Every number is an ESTIMATE until a project ratifies it.

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
3.1 Hexagonal. The domain is pure: no framework, no IO, no SDK, no clock it does not receive. Enforced by an import rule in the build rite; the checker is named in the language's code-style rules. A violation is a red build.
3.2 Rules, policies, prompts and thresholds are data: versioned, diffable, replayable.
3.3 Deterministic before probabilistic. Deterministic invariants filter first; a model chooses within what is left; deterministic validation checks the result; only then an effect is authorised.
3.4 Model output, user input, documents, pages and tool results are untrusted input, always: data, never instructions to the system. Nothing in them overrides policy, rules or tools. Every agent carries a mandatory prompt-injection eval family.
3.5 Every side effect is idempotent and goes through an outbox. At-least-once delivery is assumed everywhere. Workers hold no state that cannot be rebuilt from the database. Ephemeral signals (typing indicators, receipts) and reads bypass the outbox; messages, bookings and deletions go through it.
3.6 Every decision is traceable and replayable: input, rule version, model version, output, cost.
3.7 Every feature ships behind a flag, default off, byte-identical with the flag off, proven by a golden test. A multi-valued flag has an explicit off value as its default, and its golden test runs at off.
3.8 Configuration lives outside the code, per environment: defaults in files, secrets in the environment (4.1). Fail-fast at boot on bad configuration. Fail-open only in observation paths, and declared.
3.9 Flexibility must name its second use case today. If it cannot, build the simplest thing that works and put it in front of whoever decides.
3.10 A kill switch exists for every component that acts on the world.
3.11 Every external dependency (model, channel, calendar, database, clock) sits behind a port. A dependency we do not run ourselves has a fake adapter for tests; a dependency we run is exercised real (5.1), and its fake is optional. Test: the design lists the ports and their fakes; swapping an adapter touches no domain code.
3.12 Ubiquitous language. The docs hold a glossary (docs/GLOSSARY.md). Domain concepts — entities, states, events, tool names, tables that hold domain data — use its names. A domain concept named outside the glossary, or a glossary term used with another meaning, is a review defect; technical names are free. Test: review of the domain package and of the migrations only. The glossary is a living document (7.3).
3.13 One bounded context per product; the runtime is the shared context. No import between product contexts, and the runtime never imports a product, enforced as in 3.1. Tactical DDD (aggregates, repositories everywhere, domain events) only with a second use case, per 3.9.
3.14 Scale is never built ahead of users and never made impossible. Every design choice declares "blocks scaling to 10× tenants or traffic (ESTIMATE): yes or no". Test: design review; 4.6 is the first instance.
3.15 Every external dependency has a written fallback in the design, for runtime after a healthy boot; at boot, 3.8 holds. A crash is not a fallback. Test: a dependency → fallback table in the design document, checked in review.

## 4. Data and security
4.1 Secrets never appear in code, chat, prompts, logs or reports.
4.2 Personal data is minimised, masked before it reaches a model when possible, never logged in clear.
4.3 Retention is declared per data type. What has no declared retention is not stored.
4.4 Production access by agents is read-only.
4.5 Migrations are additive. Applied migrations are never edited.
4.6 `tenant_id` on every table that holds tenant data, from day one, even with one tenant. The exceptions — the tenants table, migration history, global registries — are listed by name in the design, and the rite checks migrations against that list. Tenant isolation is enforced by construction, never by textual checks on queries; the rite verifies that every tenant table carries the enforcement. Each product defines its tenant in its PROJECT-MANIFESTO.

## 5. Quality
5.1 Build and integration tests with real dependencies green before any report. A real dependency is one we run ourselves (database, broker). Third-party APIs — model provider, channels, calendars — sit behind ports with fakes in the green gate (3.11) and are proven by the eval set (5.6) and an on-demand live suite.
5.2 Tests assert behaviour and invariants, not implementation details.
5.3 Doc comments state contract, invariants and why. Boilerplate is forbidden.
5.4 A version marker is bumped whenever verdicts or persisted evidence change. Never silently.
5.5 Observability is designed with the feature: what will tell us, at 3 a.m., that this is broken?
5.6 Model-backed behaviour is tested by an eval set. No change to prompt, rules, tools or model is released without the set green: the set is a release gate, not a build step. The set grows from anonymised real conversations (4.2).
5.7 Reproducibility. Locked dependencies, the same container locally and in production, model version in every trace (3.6).
5.8 Readability. Code is written for the human who reads it next, not for the machine or for its author. A reader who knows the domain understands a unit from its name, its signature and its body, without opening another file; implicit behaviour, cleverness and indirection that save lines at the reader's expense are review defects. Test: design review, the reviewer reads the diff cold; a question the reviewer had to ask is a defect of the code, not of the reviewer. The linter enforces a complexity ceiling per unit, named in the language's code-style rules.
5.9 Traceability. Every requirement of a sealed spec names the test that proves it and every test names its requirement; a requirement without a test is not done, a test without a requirement is deleted or its requirement written. Every bug fix ships with the test that reproduced it, red before the fix and green after. Test: the report maps requirements to tests; the reviewer checks the map.

## 6. Operations
6.1 Every deploy follows a written handoff: pre-flight, backup, new artefact name, one line changed in the launch script, kill and verify as separate commands, expected boot lines, census before and after, rollback.
6.2 Every deploy is logged and flips the implementation book.
6.3 Every new feature has an observation window with pre-registered criteria before it is allowed to act. Acting under per-action human approval is the observation window; autonomous action comes only after the read, effect class by effect class (10.1).
6.4 One runbook per known failure mode.

## 7. Documentation
7.1 Every document follows the doc standard.
7.2 Every fact has one owning file. Others link, never copy.
7.3 Living documents carry `last_verified` and are audited against the code.
7.4 A document nobody reads is deleted, not maintained.

## 8. How we work
8.1 The way a project is run is itself a governed agent system: parliament, sealed spec, fixed prompt, adversarial review, ratification with evidence. The same governance we put into the products, we apply to ourselves.

## 9. Performance
9.1 Every agent declares a latency budget per turn in its PROJECT-MANIFESTO: a p95, split across model, tools and IO. Every trace carries the three measures. Test: the budget is checked on runs with the real model (the live suite) and on production traces over the observation window; the gate with fakes checks tools and IO only.
9.2 Perceived response. The user gets a signal (typing indicator, receipt) within 1 s ESTIMATE; streaming wherever the channel allows. Test: evals measure time to first signal.
9.3 No blocking IO on the turn path. Asynchronous IO; independent reads in parallel, effects in series (3.5, 10.1); polling and slow work in separate workers. Test: design review; no synchronous network call inside the agent loop.
9.4 The model fits the task: the smallest model that passes the eval set for that call type (classification, extraction, generation); prompt caching where available. Test: the trace carries cost and latency per call type.
9.5 A latency regression is a bug. Every release compares the p95 of tools and IO with the previous release, on a fixed eval set with a fake model; a degradation over 20% ESTIMATE blocks the release, on a sample of at least 200 turns ESTIMATE; below that sample the release is compared with the budget of 9.1 instead. The model's share is monitored against the budget, not against the previous release.

## 10. Agent conduct
10.1 Least privilege. Every tool declares its effects in a tool registry, classed as informational, reversible or irreversible, and whether they reach a third party. Irreversible effects require human approval (1.7) until their class is promoted after an observation window read (6.3), class by class, by a ratification recorded in the PROJECT-MANIFESTO. A tool without a registry entry does not exist.
10.2 Honesty. An agent never claims to be human, never reports an action its tool did not confirm — a queued effect is reported as queued and a confirmed one as done, and the registry says which effects are reported only after confirmation — and never invents what it does not know. Tested by dedicated evals.

## Revision history
| Version | Date | Change |
|---|---|---|
| 0.1.0 | 2026-10-04 | Initial version |
| 0.2.0 | 2026-10-05 | 5.1 and 5.3 language-neutral |
| 0.3.0 | 2026-10-14 | 3.1, 3.4, 3.5, 3.8 tightened; 3.11 to 3.15, 4.6, 5.6, 5.7 added; sections 9 Performance and 10 Agent conduct added; 3.7, 5.1, 6.3 clarified from lessons L-004, L-007, L-008; status ACCEPTED |
| 0.3.1 | 2026-11-06 | 5.8 Readability and 5.9 Traceability added, ratified by the Human on 2026-11-06 |
