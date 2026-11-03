#!/usr/bin/env bash
set -euo pipefail

current=$(rpm -q --qf '%{NAME}\n' ultramarine-grub-theme-{light,dark,darker} 2>/dev/null | grep -v 'not installed' | sed 's/^ultramarine-grub-theme-//' || true)
[ -n "$current" ] && echo "Current theme: $current"

echo "Pick an option:"
select theme in dark light darker uninstall; do
  [ -n "$theme" ] && break
done

if [ "$theme" = uninstall ]; then
  sudo dnf remove -y ultramarine-grub-theme
elif [ -z "$current" ]; then
  sudo dnf install -y "ultramarine-grub-theme-$theme"
elif [ "$current" != "$theme" ]; then
  sudo dnf swap -y "ultramarine-grub-theme-$current" "ultramarine-grub-theme-$theme"
fi

echo "Done. Changes show on next boot."
