#!/bin/bash

openssl rand -hex 6 | sed 's/\(..\)/\1:/g' | sed 's/.$//'
