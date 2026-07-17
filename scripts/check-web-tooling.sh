#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-.}"
PACKAGE="$TARGET/package.json"
if [[ ! -f "$PACKAGE" ]]; then
  echo "No package.json at $TARGET; dependency audit skipped."
  exit 0
fi

echo "Web tooling audit: $PACKAGE"
for dep in vanta gsap lenis three; do
  if rg -q '"'"$dep"'"[[:space:]]*:' "$PACKAGE"; then
    echo "found $dep"
  else
    echo "missing $dep"
  fi
done
if rg -q '"@gsap/react"[[:space:]]*:' "$PACKAGE"; then echo "found @gsap/react"; fi
echo "Review React Bits and component-library choices manually; they may be copied source, not package dependencies."
