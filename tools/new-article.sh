#!/bin/bash

export TOOLS_DIR="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"
source ${TOOLS_DIR}/common.sh

article=$(new_article "$@")
filepath=$(article_path ${article})

echo "New article: ${article}"
cat <<-EOF > ${filepath}
---
title: ""
tag: []
---


EOF

git add ${filepath}
