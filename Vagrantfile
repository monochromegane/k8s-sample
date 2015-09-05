# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hfm4/centos7"

  config.vm.define 'k8s-master' do |node|
    node.vm.hostname = "k8s-master"
    node.vm.network :private_network, ip: "172.16.1.10"
    set_vbox(node)

    config.vm.provision :itamae do |itamae|
      itamae.sudo = true
      itamae.recipes = ['./itamae/roles/master.rb']
    end
  end

  config.plugin.add_dependency 'itamae-plugin-recipe-selinux'

  def set_vbox(node)
    node.vm.provider :virtualbox do |vb, _|
      vb.memory = 1024
      vb.cpus = 2
      # Use faster paravirtualized networking
      vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
      vb.customize ["modifyvm", :id, "--nictype2", "virtio"]
    end
  end
end
