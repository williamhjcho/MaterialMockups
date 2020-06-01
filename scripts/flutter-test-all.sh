#!/bin/bash
set -eo pipefail

#function pubget {
#  pushd "$(dirname "$1")"
#  flutter pub get
#  popd
#}

#export -f pubget
#find . -type f -name "pubspec.yaml" -exec bash -c 'pubget "$0"' {} \;
#find . -type f -name "pubspec.yaml" -print0 | xargs -0 -I{} dirname "{}"

find . -type f -name "pubspec.yaml" -print0 \
  | xargs grep -Ril "sdk: flutter" \
  | sed 's|/[^/]*$||' \
  | xargs -I ^ sh -c "cd ^ && flutter pub get && flutter analyze --no-pub && flutter test --no-pub --coverage"
