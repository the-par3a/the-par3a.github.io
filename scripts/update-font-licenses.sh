#!/usr/bin/env bash
set -euo pipefail

# Fetch only the upstream license/notice files. Font binaries are intentionally
# not changed by this workflow.
tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

fetch_license() {
  local url="$1"
  local destination="$2"
  local filename="$3"
  local downloaded="$tmp_dir/$filename"

  echo "Checking $destination"
  curl --fail --location --silent --show-error --retry 3 "$url" --output "$downloaded"

  if [[ ! -s "$downloaded" ]]; then
    echo "::error::Downloaded license is empty: $url"
    exit 1
  fi

  if ! grep -Eiq 'SIL OPEN FONT LICENSE|SIL Open Font License' "$downloaded"; then
    echo "::error::The expected SIL Open Font License text was not found at: $url"
    exit 1
  fi

  if [[ ! -f "$destination" ]] || ! cmp -s "$downloaded" "$destination"; then
    install -D "$downloaded" "$destination"
    echo "Updated $destination"
  else
    echo "No change: $destination"
  fi
}

fetch_license \
  "https://raw.githubusercontent.com/CatharsisFonts/Cormorant/master/OFL.txt" \
  "licenses/Cormorant-Garamond-OFL.txt" "cormorant-license.txt"

fetch_license \
  "https://raw.githubusercontent.com/rsms/inter/master/LICENSE.txt" \
  "licenses/Inter-font-LICENSE.txt" "inter-license.txt"

fetch_license \
  "https://raw.githubusercontent.com/cyrealtype/Lora-Cyrillic/main/OFL.txt" \
  "licenses/lora-font-license.txt" "lora-license.txt"

fetch_license \
  "https://raw.githubusercontent.com/microsoft/cascadia-code/main/LICENSE" \
  "licenses/Cascadia-Code-LICENSE.txt" "cascadia-license.txt"

fetch_license \
  "https://raw.githubusercontent.com/rastikerdar/vazirmatn/master/OFL.txt" \
  "licenses/Vazirmatn-font-license.txt" "vazirmatn-license.txt"

echo "All upstream font license files were checked."
