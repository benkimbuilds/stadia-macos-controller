# Ghostty Mapping Rationale (Controller)

## Goal
Reduce cognitive load while using dictation + controller together by making button roles easy to remember.

## Layout Decisions
- `L1` (`leftShoulder`): previous app tab.
- `R1` (`rightShoulder`): next app tab.
- `Options`: close focused split only (`close_surface` / `Cmd+W`), not whole tab.
- `L2` (`leftTrigger`): previous macOS space/display.
- `R2` (`rightTrigger`): next macOS space/display.
- `X`: send `Tab`.
- Left thumbstick click: intentionally unassigned for now because click-plus-scroll on the same stick felt noisy in practice.
- D-pad `Up/Down/Left/Right`: global arrow-key navigation via `alwaysOn`.
- Right stick up: open `/model`.
- Right stick horizontal tilt: Ghostty-only punctuation shortcuts (`Left` = `/`, `Right` = `$`).
- `Share`: run the shared Ghostty picker-tab helper so the new tab opens directly into the Codex jump picker.
- `Options` and right thumbstick click use Ghostty native actions; shoulders and triggers follow the product-wide tab/screen controls.

## Why This Layout
- Shoulder buttons consistently move backward or forward through app tabs.
- `X` becomes a lightweight companion key instead of a destructive or layout-changing action.
- Screen navigation remains on the analog triggers, while discrete shoulder buttons handle app-local tab navigation.
- The D-pad is reserved for consistent global navigation across apps.
- The right stick now carries the quick Codex-specific prompts without consuming face buttons:
  - up is `/model`
  - horizontal tilt is punctuation
- New tabs and splits now intentionally diverge:
  - new tab means "start somewhere else" and should open the repo chooser immediately.
  - split means "stay in this workspace" and should inherit the current directory.
- Ghostty-specific structure controls use native actions where available, while tab and screen navigation remain product-wide controls.

## Notes
- `L1`, `R1`, `L2`, `R2`, `X`, D-pad arrows, and left-stick vertical scroll are configured in the top-level `alwaysOn` section.
- Mapping changes hot-reload from `config/mappings.json`; restart is not required for config-only changes.
- If Ghostty keybindings change, update descriptions and keycodes together in `config/mappings.json`.
- The `Share` behavior depends on Ghostty `1.3.0+` native AppleScript support and currently uses Ghostty's preview scripting API through a shared helper script.
- We intentionally accept that dependency because Ghostty-native actions cover the simple terminal structure controls, while AppleScript is reserved for the richer new-tab startup flow.
