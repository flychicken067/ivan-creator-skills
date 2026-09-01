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
  "$dist_dir/sun-study-female-reversal-workbuddy.zip" \
  "$dist_dir/ivan-human-ui-skillhub.zip" \
  "$dist_dir/ivan-skill-value-cover-skillhub.zip" \
  "$dist_dir/sun-study-female-reversal-skillhub.zip"

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

# SkillHub expects SKILL.md and a PNG named icon.png at the ZIP root.
# Build separate packages so platform-specific metadata does not alter the
# canonical skill sources or the WorkBuddy packages.
skillhub_stage="$(mktemp -d)"
trap 'rm -rf "$skillhub_stage"' EXIT

build_skillhub_package() {
  local skill_name="$1"
  local icon_source="$2"
  local stage="$skillhub_stage/$skill_name"

  mkdir -p "$stage"
  cp -R "$repo_root/plugins/$skill_name/skills/$skill_name/." "$stage/"
  sips --cropToHeightWidth 800 800 "$icon_source" --out "$stage/icon.png" >/dev/null
  (
    cd "$stage"
    zip -qr "$dist_dir/${skill_name}-skillhub.zip" . -x '*.DS_Store'
  )
}

build_skillhub_package \
  "ivan-human-ui" \
  "$repo_root/docs/assets/human-ui-after.png"
build_skillhub_package \
  "ivan-skill-value-cover" \
  "$repo_root/plugins/ivan-skill-value-cover/skills/ivan-skill-value-cover/assets/skill-cover-16x9-v2.png"
build_skillhub_package \
  "sun-study-female-reversal" \
  "$repo_root/plugins/sun-study-female-reversal/skills/sun-study-female-reversal/assets/market-cover-1x1.png"

unzip -tq "$dist_dir/ivan-human-ui.zip"
unzip -tq "$dist_dir/ivan-skill-value-cover.zip"
unzip -tq "$dist_dir/sun-study-female-reversal.zip"
unzip -tq "$dist_dir/ivan-human-ui-workbuddy.zip"
unzip -tq "$dist_dir/ivan-skill-value-cover-workbuddy.zip"
unzip -tq "$dist_dir/sun-study-female-reversal-workbuddy.zip"
unzip -tq "$dist_dir/ivan-human-ui-skillhub.zip"
unzip -tq "$dist_dir/ivan-skill-value-cover-skillhub.zip"
unzip -tq "$dist_dir/sun-study-female-reversal-skillhub.zip"

printf '%s\n' \
  "$dist_dir/ivan-human-ui.zip" \
  "$dist_dir/ivan-skill-value-cover.zip" \
  "$dist_dir/sun-study-female-reversal.zip" \
  "$dist_dir/ivan-human-ui-workbuddy.zip" \
  "$dist_dir/ivan-skill-value-cover-workbuddy.zip" \
  "$dist_dir/sun-study-female-reversal-workbuddy.zip" \
  "$dist_dir/ivan-human-ui-skillhub.zip" \
  "$dist_dir/ivan-skill-value-cover-skillhub.zip" \
  "$dist_dir/sun-study-female-reversal-skillhub.zip"
