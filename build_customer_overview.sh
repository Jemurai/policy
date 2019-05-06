#!/usr/bin/env bash

if [ "$1" != "" ]; then

    COMPANY_NAME=$1
    REPO_DIR="$(dirname $0)"
    OUTPUT_DIR="$REPO_DIR/export"
    OUTPUT_FORMAT="docx"

    if ! $(which -s pandoc)
    then
        echo Pandoc is not installed. Please install Pandoc and try again.
        echo Installation instructions can be found at https://pandoc.org/installing.html
        exit 1
    fi

    if [ ! -d "${OUTPUT_DIR}" ]
    then
        echo -n Creating output directory
        mkdir "${OUTPUT_DIR}"
        echo done.
    fi

    sed s/{{company_name}}/$COMPANY_NAME/g overview/policy_summary.md > ${OUTPUT_DIR}/policy_summary.md
    pandoc -t ${OUTPUT_FORMAT} -o ${OUTPUT_DIR}/PolicySummary.${OUTPUT_FORMAT} ${OUTPUT_DIR}/policy_summary.md

    sed s/{{company_name}}/$COMPANY_NAME/g overview/faq.md > ${OUTPUT_DIR}/faq.md
    pandoc -t ${OUTPUT_FORMAT} -o ${OUTPUT_DIR}/FAQ.${OUTPUT_FORMAT} ${OUTPUT_DIR}/faq.md

    sed s/{{company_name}}/$COMPANY_NAME/g overview/security_program_overview.md > ${OUTPUT_DIR}/security_program_overview.md
    pandoc -t ${OUTPUT_FORMAT} -o ${OUTPUT_DIR}/SecurityProgramOverview.${OUTPUT_FORMAT} ${OUTPUT_DIR}/security_program_overview.md

else
    echo No company name provided.
fi