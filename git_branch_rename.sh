#!/bin/bash
set -x

git branch -m "${1}" "${2}"
git push origin :"${1}"
git push --set-upstream origin "${2}"
