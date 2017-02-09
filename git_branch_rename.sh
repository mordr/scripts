#!/bin/bash
set -x

OLD=$1
NEW=$2
git branch -m "${OLD}" "${NEW}"
git push origin :"${OLD}"
git push --set-upstream origin "${NEW}"
