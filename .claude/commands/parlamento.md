# /parlamento — from an idea to a sealed spec

Input: the human's idea, in their words.

1. Copy the human's words verbatim into the Origin field. Never paraphrase the origin.
2. Read the code and documents the idea touches. Write "Context verified on code" with file references; anything not read is `verify: assumption`.
3. List every decision the spec needs. For each: a proposed default, why, and the discarded alternatives.
4. Present the decisions to the human as a numbered list. Wait. The human answers "yes to all" or corrects item by item.
5. Write docs/specs/<chunk>/spec.md in doc-standard format, status IN PARLIAMENT, plus design.md and tasks.md.
6. Fill pre-registered criteria: what will be measured, thresholds, minimum window, decided now, before any data is read.
7. Fill the Parliamentary summary: decisions ratified, by whom, when.
8. Ask the human to seal. On "seal": status SEALED, revision history entry, line in docs/INDEX.md, calendar entry.
9. Only after the seal: write the implementer prompt from docs/operational/prompt-template.md into tmp/.

No code is written during /parlamento.
