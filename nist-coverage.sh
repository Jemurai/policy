#!/usr/bin/env bash

CWD=$(dirname "$0")
DEST_DIR="${CWD}/export"
count=0
covered=0

mkdir -p "${DEST_DIR}"
rm -f "${DEST_DIR}"/coverage.[tc]sv >/dev/null

while read -r control_id; do
  ((count++))

  if MATCHING_FILES=$(grep -Hlir --exclude Errata.md "$control_id" "${CWD}/Master_Security_Policy.md" "${CWD}/policies"); then
    echo "$control_id is covered"
    ((covered++))

    # shellcheck disable=SC2086
    NAMES=$(basename -s .md ${MATCHING_FILES})
    echo -e "\"${control_id}\",\"${NAMES//_/ }\"" >>"${DEST_DIR}/coverage.csv"
  else
    echo "None found for $control_id"
  fi
done < "${CWD}/nist-items.txt"

echo "Coverage: $covered out of $count"
