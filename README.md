
# vagrant-web3

Virtualized web3 development environment for Ethereum or EVM compatible blockchains


## Host Install Dependencies

This repository has multiple branches for testing installations, changes and enhancements on macOS and windows.

MacOS - 
`brew cask install vagrant`
`brew install -y vagreant openssh-clients`

windows - your first step on windows is to be sure and install git and chocolatey 
## Vagrant Dependencies

`vagrant plugin install vagrant-vbguest vagrant-scp`

### scripts

If you don't have a lot of experience whith shell and want to inspect one of the script commands I suggest checking out explainshell.com. Copy and paste the line of the script you want to read about it from the explain shell tool.
The scripts folder contains the procedural, host configuration files for installing web3, ethereum, and various other host tools and software.

[python web3](https://github.com/ethereum/web3.py) - the python web3 library

[KEVM](https://github.com/input-output-hk/mantis/wiki/Working-with-Smart-Contracts-on-KEVM-testnet) - Using the KEVM

In order to test our web3 project against the Ethereum testnets or mainnet we need a full or light node. The scripts/syncgeth.sh script will connect to the Ropsten testnet in "light" mode. In light mode your node is only syncing a small, recent, portion of the blockchain. This can be useful if you are only running tests or developing.  

[syncgeth.sh](/scripts/syncgeth.sh) 

Currently I have configured geth to run in `screen`, this is a linux hack of sorts and plans are underway to trasnition to a system service.

