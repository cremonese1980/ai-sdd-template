| Field | Value |
|---|---|
| Type | Standard |
| Owner | TEMPLATE |
| Status | ACCEPTED |
| Date | 2026-10-04 |
| Authors | Gabri (Human) |
| Origin | The five feedback memories that cost the most on Trabotto |
| Upstream evidence | |

# AGENT MEMORY SEED

At the start of a new project, the Human loads these five lessons into the agent's memory, one memory per lesson, type "feedback". The agent's memory keeps one file per fact (types: feedback, user, project, reference) plus a one-line index per file.

1. **Commit message in one line**: ASCII, no quotes, parentheses or metacharacters, explicit paths in `git add`.
2. **One chunk at a time**: never start the next before the reviewer is silent on the current one.
3. **No silent downgrade**: a decision ratified by the human is never weakened, reinterpreted or merged by inference.
4. **Impact line**: every result or ratification states its real-world impact, zero or real.
5. **Pre-registration**: criteria and thresholds are written before reading any data.
