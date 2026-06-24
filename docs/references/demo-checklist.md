# Demo Checklist

Use this list before recording a public demo of the bridge.

## Preflight

1. Confirm the controller is connected in macOS.
2. Confirm Accessibility is enabled for:
   - `~/Library/Application Support/stadia-controller-bridge/StadiaControllerBridge.app/Contents/MacOS/stadia-controller-bridge`
3. Confirm the LaunchAgent is healthy:
   - `launchctl print gui/$(id -u)/com.stadia-controller-bridge | sed -n '1,90p'`
4. Confirm the repo build is clean:
   - `./scripts/check-fast.sh`
   - `swift build`
5. Confirm the live bridge is installed from the current repo:
   - `./scripts/install-launchd-bridge.sh --repo-dir "$PWD" --mode live`
6. Tail logs in a separate terminal in case something regresses during recording:
   - `tail -n 80 ~/Library/Logs/stadia-controller-bridge.launchd.out.log`
   - `tail -n 80 ~/Library/Logs/stadia-controller-bridge.launchd.err.log`

## Recommended Demo Flow

1. Start in Ghostty and show split/tab navigation.
2. Show always-on controls:
   - display or space switching
   - analog scrolling
   - global enter / escape / tab behaviors
3. Show Codex-specific controls:
   - thread navigation
   - chat box focus
   - triangle clearing draft text
4. Show Arc-specific controls:
   - pointer movement
   - scroll
   - click
   - refresh / copy URL
5. Show one unmapped app to demonstrate the explicit-profile model:
   - only `alwaysOn` controls should fire
   - profile-specific buttons should log `[SKIP] no active app profile`

## Recording Notes

- Keep Ghostty, Codex, and Arc already open before recording.
- Use the same window sizes you expect in the demo; Codex chat-box focus currently targets the lower center of the window.
- Avoid changing signing identity or reinstalling from a different checkout right before recording.
- If a button appears dead, check logs before changing mappings.

## Fast Recovery

- Reinstall live bridge:
  - `./scripts/install-launchd-bridge.sh --repo-dir "$PWD" --mode live`
- Verify launchd wiring:
  - `./scripts/verify-launchd-bridge.sh`
- Diagnose controller exposure:
  - `swift run stadia-controller-bridge --config config/mappings.json --diagnose-controller`
