---
paths:
  - "**/*.java"
  - "**/pom.xml"
---
# CODE STYLE — Java 21 / Spring Boot 3 / Maven

Every rule here is checkable in review. If a rule needs an exception, the exception is declared in the report, not hidden in the diff.

## Language
1. Code, comments, Javadoc, commit messages, log messages: English only.
2. Javadoc states contract, invariants and *why*. Never restate the signature. No boilerplate Javadoc, no commented-out code, no TODO without an owner and a reason in TODO.md.
3. Names reveal intent. No abbreviations except domain terms already in the glossary.

## Architecture
4. Hexagonal. The domain module imports no framework: no Spring, no JPA, no Jackson, no logging framework.
5. Ports are interfaces owned by the domain or application layer; adapters implement them outside. Dependencies point inward, always.
6. Rules, policies, prompts and thresholds are data, versioned, never hard-coded in behaviour.
7. Packages by feature inside a module, not by technical layer.

## Java
8. Immutable by default: `record` for values, `final` fields, no setters. Mutable state only where the design says so, and it says why.
9. `sealed` interfaces for closed hierarchies; pattern-matching `switch` must be exhaustive, no `default` that hides a missing case.
10. `Optional` only as a return type. `null` never crosses a public boundary.
11. Domain errors are typed, unchecked exceptions or explicit result types. Never swallow, never log-and-rethrow; log once, at the boundary.
12. Virtual threads for IO-bound work; no shared mutable state across threads; explicit timeout on every external call.

## Configuration and numbers
13. Typed, validated `@ConfigurationProperties`. Fail-fast at boot on invalid or missing config; fail-open only in observation jobs, and declared as such.
14. No magic numbers. Every threshold is a named constant or config key with a Javadoc line; new numbers are labelled `ESTIMATE` until ratified.
15. Every feature starts behind a flag, default off, byte-identical behaviour with the flag off.

## Persistence and messaging
16. Migrations are additive and versioned. Never edit an applied migration.
17. Consumers are idempotent; side effects go through the outbox; every message has an idempotency key.
18. Domain objects are not persistence entities. Mapping happens in the adapter.

## AI components
19. Model output is untrusted input: validated deterministically before it has any effect.
20. Prompts are versioned data files. Every call logs prompt version, model, tokens and cost.
21. An action proposed by a model passes the policy engine before execution. No exception.

## Observability
22. Structured logs with correlation id. Never log secrets, tokens, or personal data.
23. Business metrics before system metrics: the first dashboard shows what the user sees.

## Build and formatting
24. One formatter, enforced in the build (Spotless). A formatting-only change is its own commit.
25. No wildcard imports. No static mutable state. No `System.out`.
26. `mvn clean verify` green with Testcontainers before any report is written.
