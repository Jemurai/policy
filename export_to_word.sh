#!/usr/bin/env bash

REPO_DIR="$(dirname $0)"
OUTPUT_DIR="$REPO_DIR/export"
OUTPUT_FORMAT="docx"

if ! $(which -s pandoc)
then
    echo Pandoc is not installed. Please install Pandoc and try again.
    echo Installation instructions can be found at https://pandoc.org/installing.html
    exit 1
fi

if [[ ! -d "${OUTPUT_DIR}" ]]
then
    echo -n Creating output directory
    mkdir "${OUTPUT_DIR}"
    echo done.
fi


pandoc -t ${OUTPUT_FORMAT} -o ${OUTPUT_DIR}/Master_Security_Policy.${OUTPUT_FORMAT} Master_Security_Policy.md

for policy in ${REPO_DIR}/policies/*.md
do
    pandoc -t ${OUTPUT_FORMAT} -o ${OUTPUT_DIR}/$(basename ${policy%%md})${OUTPUT_FORMAT} ${policy}
done
