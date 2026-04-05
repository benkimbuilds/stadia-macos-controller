# Stadia macOS Controller

This is the only `AGENTS.md` in this repo. Do not expect nested `AGENTS.md` files or any `CLAUDE.md` files to exist or auto-load when working in subdirectories.

## Goal
- Build a local bridge that maps Stadia controller inputs to macOS actions and app-specific shortcuts, starting with Ghostty.

## Working Defaults
- Keep implementation pragmatic and testable on macOS.
- Prefer native Apple frameworks before adding extra dependencies.
- Keep controller behavior configurable from `config/mappings.json`.
- Keep app behavior explicit: preserve the `appProfiles` plus `alwaysOn` model instead of adding implicit fallback profiles unless explicitly requested.

## Docs Contract
- Update `docs/architecture/` when subsystem shape, boundaries, responsibilities, or runtime flow change.
- Update `docs/references/` when commands, file maps, config contracts, validation steps, or operational notes change.
- Read these docs first:
  - `docs/architecture/bridge-overview.md`
  - `docs/architecture/ghostty-integration.md`
  - `docs/references/repo-contract.md`
  - `docs/references/setup.md`
  - `docs/references/mappings-schema.md`
  - `docs/references/deployment.md`

## Validation
- Run repo-native validation and any change-specific Swift or runtime checks before handoff.
- Use `docs/references/repo-contract.md` for the exact validation and launchd evidence expected before declaring the bridge healthy.
