#!/bin/bash

svn blame $1 | awk '{print $2}' | sort | uniq -c | sort -nk 1 -r
