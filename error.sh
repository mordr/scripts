#!/bin/bash

# Prevent get sourced more than once
[ -n "$ERROR_SCRIPT" ] && return || readonly ERROR_SCRIPT=1

# Usage: error "Received interrupt, exiting"
error () {
    echo "$(tput setaf 1)[ERROR] $@$(tput sgr0)" >&2
    echo
    exit 1
}
