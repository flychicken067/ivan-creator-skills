#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
dist_dir="$repo_root/dist"

mkdir -p "$dist_dir"
rm -f \
  "$dist_dir/ivan-human-ui.zip" \
  "$dist_dir/ivan-skill-value-cover.zip" \
  "$dist_dir/sun-study-female-reversal.zip" \
  "$dist_dir/ivan-human-ui-workbuddy.zip" \
  "$dist_dir/ivan-skill-value-cover-workbuddy.zip" \
  "$dist_dir/sun-study-female-reversal-workbuddy.zip"

(
  cd "$repo_root/plugins/ivan-human-ui/skills"
  zip -qr "$dist_dir/ivan-human-ui.zip" ivan-human-ui -x '*.DS_Store'
)

(
  cd "$repo_root/plugins/ivan-skill-value-cover/skills"
  zip -qr "$dist_dir/ivan-skill-value-cover.zip" ivan-skill-value-cover -x '*.DS_Store'
)

(
  cd "$repo_root/plugins/sun-study-female-reversal/skills"
  zip -qr "$dist_dir/sun-study-female-reversal.zip" sun-study-female-reversal -x '*.DS_Store'
)

# WorkBuddy / Doubao Workmates expect SKILL.md at the ZIP root.
for skill_name in ivan-human-ui ivan-skill-value-cover sun-study-female-reversal; do
  (
    cd "$repo_root/plugins/$skill_name/skills/$skill_name"
    zip -qr "$dist_dir/${skill_name}-workbuddy.zip" . -x '*.DS_Store'
  )
done

unzip -tq "$dist_dir/ivan-human-ui.zip"
unzip -tq "$dist_dir/ivan-skill-value-cover.zip"
unzip -tq "$dist_dir/sun-study-female-reversal.zip"
unzip -tq "$dist_dir/ivan-human-ui-workbuddy.zip"
unzip -tq "$dist_dir/ivan-skill-value-cover-workbuddy.zip"
unzip -tq "$dist_dir/sun-study-female-reversal-workbuddy.zip"

printf '%s\n' \
  "$dist_dir/ivan-human-ui.zip" \
  "$dist_dir/ivan-skill-value-cover.zip" \
  "$dist_dir/sun-study-female-reversal.zip" \
  "$dist_dir/ivan-human-ui-workbuddy.zip" \
  "$dist_dir/ivan-skill-value-cover-workbuddy.zip" \
  "$dist_dir/sun-study-female-reversal-workbuddy.zip"
