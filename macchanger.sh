#!/bin/bash

error() {
    echo "Error: $@" >&2
}

INTERFACE=$1
if [[ -z $1 ]]; then
    error "Missing interface"
    exit 1
fi

echo "#### Make sure to disconnect from wifi for silicon mac ####"
echo "Updating mac for interface ${INTERFACE}"
echo "Running as sudo"

CURRENT_MAC=$(ifconfig ${INTERFACE} | grep ether | sed 's/ //' | sed 's/ether//')
echo "Current mac ${CURRENT_MAC}"

# Some wireless interfaces are en1
if [[ ${INTERFACE} = "en0" || ${INTERFACE} = "en1" ]]; then
    echo "Disassociating from any existing wireless networks"
    sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -z
fi

echo "Generating random mac address"
NEW_MAC=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g' | sed 's/.$//')
echo "Random mac ${NEW_MAC}"
sudo ifconfig ${INTERFACE} ether ${NEW_MAC}

UPDATED_MAC=$(ifconfig ${INTERFACE} | grep ether | sed 's/ //' | sed 's/ether//')
echo "Updated mac ${UPDATED_MAC}"

echo "Done changing mac. If the new mac has not been accepted, run script again."
