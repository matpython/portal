# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "apof" do |apof|
    apof.vm.box = "ubuntu/trusty32"
    apof.vm.synced_folder ".", "/home/vagrant/app/"

    apof.vm.network :forwarded_port, guest: 8000, host: 8000
    apof.vm.network "private_network", ip: "192.168.50.10"

    apof.vm.hostname = "APOF"
    apof.vm.provision :shell, :path => "vagrant_bootstrap.sh"
  end

end
