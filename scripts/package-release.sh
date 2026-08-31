#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
dist_dir="$repo_root/dist"

mkdir -p "$dist_dir"
rm -f "$dist_dir/ivan-human-ui.zip" "$dist_dir/ivan-skill-value-cover.zip"

(
  cd "$repo_root/plugins/ivan-human-ui/skills"
  zip -qr "$dist_dir/ivan-human-ui.zip" ivan-human-ui -x '*.DS_Store'
)

(
  cd "$repo_root/plugins/ivan-skill-value-cover/skills"
  zip -qr "$dist_dir/ivan-skill-value-cover.zip" ivan-skill-value-cover -x '*.DS_Store'
)

unzip -tq "$dist_dir/ivan-human-ui.zip"
unzip -tq "$dist_dir/ivan-skill-value-cover.zip"

printf '%s\n' "$dist_dir/ivan-human-ui.zip" "$dist_dir/ivan-skill-value-cover.zip"
