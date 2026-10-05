| Field | Value |
|---|---|
| Type | Standard |
| Owner | TEMPLATE |
| Status | DRAFT |
| Date | 2026-10-04 |
| Authors | Gabri (Human), Implementer |
| Origin | "for an agent, the eval set is the spec." — Gabri |
| Upstream evidence | docs/ENGINEERING-MANIFESTO.md 2.2, 2.4, 3.4 |

# EVALS — product agents

## Why evals are first-class
For an agent, the eval set is the spec. A product agent's behaviour cannot be fully read from its code: the same prompt, model and rules can complete a task, take a wrong action or disclose what it must not. The requirements in a spec say what the agent shall do; the eval set is where that is proven, conversation by conversation, before the agent is allowed to act and after every change to its prompt, model, rules or tools.

## Layout
Created per project when the first product agent is specified:

| Path | What |
|---|---|
| `golden/` | conversations with their expected outcome |
| `personas/` | simulated users, including hostile and prompt-injection personas |
| `criteria.md` | pre-registered thresholds, written before any eval run is read |

## Default numbers
Every product agent is measured on at least these. Thresholds live in `criteria.md`, decided before the run; a new threshold is ESTIMATE until ratified.

| Metric | Target |
|---|---|
| Task completion, on conversations where the task should complete | threshold per project |
| Wrong actions | zero |
| Disclosure violations | zero |
| Handoff rate | threshold per project |
| Cost per conversation | threshold per project |
| p95 latency | threshold per project |

## The simulator
The simulator that plays the personas is a test harness, never a product.
