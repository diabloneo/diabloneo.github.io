#!/bin/bash

export TOOLS_DIR="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"
source ${TOOLS_DIR}/common.sh

# Find latest article serial number
last_index=$(find _posts/ -name '*write-what-i-have*' | \
	xargs -I{} basename {} | \
    gawk 'match($0, /.*write-what-i-have-0*(.*).markdown/, ary) {print ary[1]}' | \
	sort --reverse -n | \
	head -1)

let index=${last_index}+1

article=$(new_article $(printf "write-what-i-have-%03d" ${index}))
filepath=$(article_path ${article})

echo "New article: ${article}"
cat <<-EOF > ${filepath}
---
title: "想到什么写什么周报 第${index}期 - ${DATE}"
tag: [cloud, golang, database]
---


EOF

git add ${filepath}
