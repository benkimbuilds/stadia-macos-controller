#!/usr/bin/env bash
set -euo pipefail

MODE="${1:-}"
DICTATE_REPO="${DICTATE_REPO:-$HOME/code/play/dictate}"
DICTATE_SCRIPT="${DICTATE_REPO}/dictate.py"
START_SCRIPT="${DICTATE_REPO}/start-dictation.sh"
DICTATE_MATCH='[d]ictate.py'

usage() {
  cat <<'USAGE'
Usage: signal-dictation.sh <begin|end>
USAGE
}

ensure_running() {
  if pgrep -f "$DICTATE_MATCH" >/dev/null 2>&1; then
    return
  fi

  DICTATION_SIGNAL_MODE=1 "$START_SCRIPT" >/dev/null 2>&1

  for _ in {1..20}; do
    if pgrep -f "$DICTATE_MATCH" >/dev/null 2>&1; then
      return
    fi
    sleep 0.1
  done

  echo "Dictation helper did not start: $DICTATE_SCRIPT" >&2
  exit 1
}

toggle() {
  pkill -USR1 -f "$DICTATE_MATCH"
}

case "$MODE" in
  begin)
    ensure_running
    toggle
    ;;
  end)
    toggle
    ;;
  -h|--help|help)
    usage
    ;;
  *)
    usage >&2
    exit 2
    ;;
esac
