#! /usr/bin/env bash

echo "installing Ethereum"

apt update -y && apt upgrade -y
apt install -y apache2 software-properties-common 
add-apt-repository -y ppa:ethereum/ethereum
apt install -y ethereum 