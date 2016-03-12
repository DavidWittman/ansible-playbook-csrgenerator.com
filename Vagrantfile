# -*- mode: ruby -*-

Vagrant.configure("2") do |config|
  config.vm.hostname = "csrgenerator.local"
  config.vm.network "private_network", ip: "172.31.100.2"

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "csrgenerator.yml"
    ansible.host_key_checking = false
    ansible.extra_vars = { ansible_ssh_user: "vagrant" }
    ansible.sudo = true
  end

  config.vm.provider :virtualbox do |v|
    v.memory = 512
  end

  config.vm.define "cent7" do |cent7|
    cent7.vm.box = "centos/7"
  end
end
