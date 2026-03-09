# Stadia Docs Router

## Purpose
- Route agents to the right docs quickly.

## Read Order
1. `../AGENTS.md`
2. `architecture/bridge-overview.md`
3. `references/setup.md`
4. `references/mappings-schema.md`
5. `references/deployment.md`
6. `projects/<project>/tasks.md`

## Placement
- `architecture/`: design and runtime flow notes.
- `references/`: stable setup and mapping lookup details.
- `projects/`: active project plans and execution state.

## Portfolio Docs Contract (Enforced)
<!-- PORTFOLIO_DOCS_CONTRACT_V1 -->

- `docs/architecture/`: quick human overview first, then details. Prefer visual-first Markdown (Mermaid) with short helper text in plain English.
- `docs/references/`: durable implementation facts, command snippets, and operational lookup material for humans and agents.

### Portfolio Docs Rules (Enforced)

- Keep wording plain and non-jargony so a solo human can understand quickly on first read.
- For visual/system flows, prefer Mermaid in Markdown with short helper text.
- Default Mermaid orientation is top-down (`flowchart TD`) unless horizontal layout is materially clearer.
