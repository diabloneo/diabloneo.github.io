#!/bin/bash

export TOOLS_DIR="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"
export PROJECT_ROOT="$(cd ${TOOLS_DIR}/.. && pwd)"
export POSTS_DIR="${PROJECT_ROOT}/_posts"
export YEAR=$(date +%Y)
export DATE=$(date +%Y-%m-%d)


function new_article() {
	local name=$(echo ${1} | tr ' ' '-')
	echo $(printf "%s-${name}.markdown" ${DATE})
}

function article_path() {
	echo "${POSTS_DIR}/${YEAR}/${1}"
}
