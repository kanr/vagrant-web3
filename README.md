
# vagrant-web3

## Host Dependencies

`vagrant`
`openssh-clients`

## Vagrant Dependencies

`vagrant plugin install vagrant-vbguest vagrant-scp`

Virtualized web3 development environment for Ethereum

This repository was created to help developers get up and running with ethereum environments and tools.  

### scripts

The scripts folder contains the procedural, host configuration files for installing web3, ethereum, and various other host tools and software.

[python web3](https://github.com/ethereum/web3.py) - the python web3 library
[KEVM](https://github.com/input-output-hk/mantis/wiki/Working-with-Smart-Contracts-on-KEVM-testnet) - Using the KEVM

In order to test our web3 project against the Ethereum testnets or mainnet we need a full or light node. The scripts/syncgeth.sh script will connect to the Ropsten testnet in "light" mode. In light mode your node is only syncing a small, recent, portion of the blockchain. This can be useful if you are only running tests or developing.  

Currently I have configured geth to run in `screen`, this is a linux hack of sorts and plans are underway to trasnition to a system service.

