#!/bin/bash

echo 'Changing computer name..'
openssl rand -hex 13 | base64 | sudo scutil --set ComputerName
COMPUTER_NAME=$(sudo scutil --get ComputerName)
echo "New computre name: ${COMPUTER_NAME}"
echo 'Done'
