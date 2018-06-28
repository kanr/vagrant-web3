# -*- mode: ruby -*-
# vi: set ft=ruby :

#ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

Vagrant.configure("2") do |config|



  #config.vm.box = "generic/ubuntu1804"
  config.vm.network "forwarded_port", guest: 8545, host: 8546
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 30303, host: 30303, protocol: "udp"
  config.vm.network "public_network"
  config.vm.synced_folder "contracts/", "/home/vagrant/contracts"

  
  #config.vm.provider "docker" do |docker|
    ## Required
    ##docker.image = "ethereum/client-go"
    #docker.image = "ethereum/client-python"
    ##docker.build_dir = "../go-ethereum"
    ## Optional
    #docker.has_ssh = true
    #docker.cmd = ["ls", "/"]
#   end
   
   config.vm.provider "virtualbox" do |web3|
     # Display the VirtualBox GUI when booting the machine
     #vb.gui = true
     web3.name = "web3"
     # Customize the amount of memory on the VM:
     web3.memory = "2048"
     web3.cpus = "2"
   end
   

  config.vm.provision "file", source:"scripts", destination: "/home/vagrant/scripts"
  config.vm.provision "file", source:"contracts", destination: "/home/vagrant/contracts"
  config.vm.provision "shell", path: "scripts/install.sh"
  config.vm.provision "shell", path: "scripts/install-javascript-web3.sh"
  config.vm.provision "shell", path: "scripts/install-python3-web3.sh"
  config.vm.provision "shell", inline: <<-SHELL
    echo "inline shell provisioner"
   SHELL
  # config.vm.provision "shell", path: "scripts/syncgeth.sh"

end
