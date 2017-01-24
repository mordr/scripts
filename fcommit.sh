#!/bin/bash

svn log -l 100 | egrep 'r[0-9]+ \| .* \|' | awk '{print $3}' | sort | uniq -c | sort -nk 1 -r
