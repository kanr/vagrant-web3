# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "generic/ubuntu1804"
  config.vm.network "forwarded_port", guest: 8545, host: 8545
  config.vm.network "forwarded_port", guest: 30303, host: 30303, protocol: "udp"
  config.vm.synced_folder "/contracts/", "/home/vagrant/contracts", create: true
  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
   config.vm.provider "virtualbox" do |web3|
     # Display the VirtualBox GUI when booting the machine
     #vb.gui = true
     web3.name = "web3"
     # Customize the amount of memory on the VM:
     web3.memory = "2048"
     web3.cpus = "2"
   end


  config.vm.provision "file", source:"/scripts", destination: "/home/vagrant/scripts"

  config.vm.provision "shell", path: "scripts/install.sh"
  #config.vm.provision "shell", path: "scripts/install-javascript-web3.sh"

  config.vm.provision "shell", inline: <<-SHELL
    echo "inline shell provisioner"
   SHELL
  # config.vm.provision "shell", path: "scripts/syncgeth.sh"

end
