#! /usr/bin/env bash

echo "geth syncing underway"
#screen -dmS geth \
geth --testnet --syncmode "light" \
--rpc --rpcapi db,eth,net,web3,personal,admin \
--cache=1024  --rpcport 8545
