#! /usr/bin/env bash

echo "installing Ethereum"

apt-get update -y && apt-get upgrade -y
apt-get install -y apache2 screen software-properties-common
add-apt-repository -y ppa:ethereum/ethereum
add-apt-repository -y ppa:ethereum/ethereum-dev
apt-get install -y ethereum solc
apt-get autoremove -y

echo "starting Geth"
chmod +x scripts/*
bash scripts/syncgeth.sh
