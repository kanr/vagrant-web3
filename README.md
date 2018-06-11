
# vagrant-web3

Virtualized web3 development environment for Ethereum

this repository was created to help developers get up and running with ethereum development environments and tools.  

You can skip vagrant and install your web3 development natively by following the shell commands in the vagrant file.  

In order to test our web3 project against the Ethereum testnets or mainnet we need a full or light node. The scripts/syncgeth.sh script will connect to the Ropsten testnet and begin importing a portion of the blockchain data. 

you can check the progress of the sync process by opening andother terminal window and running the commands `vagrant ssh && geth attach http:127.0.0.1:8545'