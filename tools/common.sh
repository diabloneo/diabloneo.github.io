#!/bin/bash

export TOOLS_DIR="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"
export PROJECT_ROOT="$(cd ${TOOLS_DIR}/.. && pwd)"
export POSTS_DIR="${PROJECT_ROOT}/_posts"
