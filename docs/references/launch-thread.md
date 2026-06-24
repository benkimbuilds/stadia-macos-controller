# Launch Thread Draft

Use this as a starting point for an X/Twitter thread announcing the project.

## Version A

1. I turned a Stadia controller into a real macOS control surface.

   It now drives Ghostty, Codex, Arc, Slack, and a few global desktop actions through a small local bridge built with native macOS APIs.

2. The fun part is that it is not pretending to be a generic automation platform.

   It reads controller input, checks the frontmost app, and runs explicit profile-specific actions.

3. Ghostty is the main target right now.

   I can switch tabs and splits, scroll the focused terminal, launch Codex helpers, and navigate without reaching for the keyboard.

4. I also wired app-specific controls for Codex.

   Thread navigation works from the controller, and triangle clears the current draft in the chat box.

5. Arc has its own profile too.

   Stick for pointer movement, stick for scroll, button for click, and shortcuts for refresh and copy URL.

6. The whole thing is config-driven.

   Mappings live in JSON, hot-reload while the bridge runs, and only use explicit app profiles. No mystery fallback behavior.

7. I also cleaned up the repo so it is no longer full of local agent/runtime state.

   The public version now reads like an actual project instead of an internal scratchpad.

8. If people want it, I can keep pushing this into a better macOS controller workflow layer:

   - better app profiles
   - cleaner demo assets
   - more native actions
   - better install UX

9. Demo video below.

   Repo: `github.com/...`

## Version B

1. New project: a local bridge that turns a Stadia controller into a usable macOS input device for real apps.

2. It is profile-aware, not generic.

   Ghostty gets terminal controls.
   Codex gets chat/thread controls.
   Arc gets browser controls.
   Unmapped apps only get explicit always-on actions.

3. The stack is simple:

   - macOS `GameController`
   - Swift bridge
   - app-profile resolver
   - keystrokes / Ghostty actions / shell helpers

4. One of my favorite parts is that Ghostty and Codex now feel meaningfully controller-navigable instead of just “technically possible.”

5. I just finished a cleanup pass to make the repo presentation-ready before sharing it more broadly.

6. Shipping the demo next.

## Notes

- Replace `github.com/...` with the real repo URL before posting.
- Thread 1 and 2 are the strongest hooks.
- If you post a video, keep the text lighter and let the demo do the work.
