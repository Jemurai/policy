#!/usr/bin/env bash
COMPANY_NAME=$1
REPO_DIR="$(dirname $0)"
OUTPUT_DIR="${REPO_DIR}/export"
OUTPUT_FORMAT="docx"
PANDOC_ARGS="--read=markdown --to=${OUTPUT_FORMAT}"

if [[ -z ${COMPANY_NAME} ]]
then
  echo "USAGE: $0 <company_name>"
  echo
  echo -e "\tcompany_name:\tCompany name as it should be listed in documents"
  exit 1
fi

if ! $(which -s pandoc)
then
    echo Pandoc is not installed. Please install Pandoc and try again.
    echo Installation instructions can be found at https://pandoc.org/installing.html
    exit 1
fi

if [[ ! -d "${OUTPUT_DIR}" ]]
then
    echo -n Creating output directory
    mkdir -p "${OUTPUT_DIR}"
    echo done.
fi

echo -n "Creating Policy Summary: "
sed "s/{{company_name}}/${COMPANY_NAME}/g" "${REPO_DIR}/overview/policy_summary.md" \
  | pandoc --read markdown -t ${OUTPUT_FORMAT} -o ${OUTPUT_DIR}/PolicySummary.${OUTPUT_FORMAT}
echo "done."

echo -n "Creating NIST Overview: "
sed "s/{{company_name}}/${COMPANY_NAME}/g" "${REPO_DIR}/overview/nist_overview.md" \
  | pandoc -t ${OUTPUT_FORMAT} -o ${OUTPUT_DIR}/NISTOverview.${OUTPUT_FORMAT}
echo "done."

echo -n "Creating FAQ: "
sed "s/{{company_name}}/${COMPANY_NAME}/g" "${REPO_DIR}/overview/faq.md" \
  | pandoc -t ${OUTPUT_FORMAT} -o ${OUTPUT_DIR}/FAQ.${OUTPUT_FORMAT}
echo "done."

echo -n "Creating Security Program Overview: "
sed "s/{{company_name}}/${COMPANY_NAME}/g" "${REPO_DIR}/overview/security_program_overview.md" \
  | pandoc -t ${OUTPUT_FORMAT} -o ${OUTPUT_DIR}/SecurityProgramOverview.${OUTPUT_FORMAT}
echo "done."
