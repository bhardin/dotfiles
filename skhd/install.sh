#!/bin/sh
#
# Start (or restart) the skhd hotkey daemon so ~/.skhdrc is live at login.
# Picked up by script/install's `find . -name install.sh` loop, so it runs on
# every `dot`. Kept idempotent for that reason.
#
# One manual step remains per machine: grant skhd Accessibility permission in
# System Settings > Privacy & Security > Accessibility. macOS will not let a
# script grant it.

command -v skhd >/dev/null 2>&1 || exit 0

if launchctl list 2>/dev/null | grep -q com.koekeishiya.skhd; then
  skhd --restart-service
else
  skhd --start-service
fi
