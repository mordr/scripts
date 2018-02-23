#!/bin/bash

# Usage: error "Received interrupt, exiting"
error () {
    echo "$(tput setaf 1)[ERROR] $@$(tput sgr0)" >&2
    echo
    exit 1
}
