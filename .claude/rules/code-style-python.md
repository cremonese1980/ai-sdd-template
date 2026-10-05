---
paths:
  - "**/*.py"
  - "**/pyproject.toml"
---
# CODE STYLE — Python

Every rule here is checkable in review. If a rule needs an exception, the exception is declared in the report, not hidden in the diff. Tools named below are examples, not requirements; each project names its own in docs/PROJECT-MANIFESTO.md → Rites.

## Language
1. Code, comments, docstrings, commit messages, log messages: English only.
2. Docstrings state contract, invariants and *why*. Never restate the signature. No boilerplate docstrings, no commented-out code, no TODO without an owner and a reason in TODO.md.
3. Names reveal intent. No abbreviations except domain terms already in the glossary.

## Architecture
4. Hexagonal. The domain package imports no framework and does no IO: no web framework, no ORM, no HTTP or database client, no logging configuration (for example no FastAPI, Django, SQLAlchemy, httpx).
5. Ports are protocols or abstract base classes owned by the domain or application layer; adapters implement them outside. Dependencies point inward, always.
6. Rules, policies, prompts and thresholds are data, versioned, never hard-coded in behaviour.
7. Packages by feature, not by technical layer.

## Python
8. Immutable values: frozen dataclasses or frozen pydantic models, no mutation after construction. Mutable state only where the design says so, and it says why.
9. Strict typing: every public function, method and attribute is annotated, and a type checker runs in strict mode in the build (for example mypy or pyright).
10. Closed hierarchies are unions or enums; a `match` over them is exhaustive, checked with `assert_never`, with no catch-all case that hides a missing one.
11. `None` crosses a public boundary only where the type says `X | None`.
12. Domain errors are typed exceptions or explicit result types. No bare `except:`, never swallow, never log-and-reraise; log once, at the boundary.
13. No shared mutable state across threads or tasks; explicit timeout on every external call.

## Configuration and numbers
14. Typed, validated settings (for example pydantic-settings). Fail-fast at boot on invalid or missing config; fail-open only in observation jobs, and declared as such.
15. No magic numbers. Every threshold is a named constant or config key with a comment line; new numbers are labelled `ESTIMATE` until ratified.
16. Every feature starts behind a flag, default off, byte-identical behaviour with the flag off.

## Persistence and messaging
17. Migrations are additive and versioned (for example Alembic). Never edit an applied migration.
18. Consumers are idempotent; side effects go through the outbox; every message has an idempotency key.
19. Domain objects are not persistence models. Mapping happens in the adapter.

## AI components
20. Model output is untrusted input: validated deterministically, for example against a typed schema, before it has any effect.
21. Prompts are versioned data files. Every call logs prompt version, model, tokens and cost.
22. An action proposed by a model passes the policy engine before execution. No exception.

## Observability
23. Structured logs with correlation id. Never log secrets, tokens, or personal data.
24. Business metrics before system metrics: the first dashboard shows what the user sees.

## Build and formatting
25. One formatter and one linter, enforced in the build (for example ruff). A formatting-only change is its own commit.
26. No wildcard imports. No mutable module-level state. No `print` for logging.
27. Tests run against real dependencies (for example Testcontainers), green before any report is written.
