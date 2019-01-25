#!/bin/bash

echo 'Changing computer name..'
COMPUTER_NAME=$(openssl rand -hex 13 | base64)
sudo scutil --set ComputerName ${COMPUTER_NAME}
sudo scutil --set LocalHostName ${COMPUTER_NAME}
echo "New identifier: ${COMPUTER_NAME}"
echo 'Done'
