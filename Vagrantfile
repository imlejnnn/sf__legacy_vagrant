# -*- mode: ruby -*-
# vi: set ft=ruby :
vm_box = ENV['BOX'] ? ENV['BOX'] : 'centos/7'
vm_hostname = 'vagrantpgsql'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
# Minimum Vagrant Version
Vagrant.require_version '>= 2.2.0'
VAGRANTFILE_API_VERSION = '2'.freeze

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define vm_hostname do |pg|
    # Global Box details
    pg.vm.box = vm_box
    pg.vm.hostname = vm_hostname

    # Box Specifications
    # VirtualBox
    pg.vm.provider :virtualbox do |vb|
      vb.gui = false # Change to true to launch console
      vb.name = vm_hostname
      vb.memory = 4096
      vb.cpus = 2
    end

    # Start shell provisioning.
    pg.vm.provision 'shell' do |s|
      s.path = 'install_postgres.sh'
      s.privileged = true
    end
  end
end