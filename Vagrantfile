# -*- mode: ruby -*-

CSRGEN_VERSION = ENV['CSRGEN_VERSION'] || "master"

Vagrant.configure("2") do |config|
  config.vm.hostname = "csrgenerator.local"
  config.vm.network "private_network", ip: "172.31.100.2"

  config.vm.provider :virtualbox do |v|
    v.memory = 512
  end

  config.vm.define "cent7" do |cent7|
    cent7.vm.box = "centos/7"
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "csrgenerator.yml"
    ansible.host_key_checking = false
    ansible.extra_vars = { ansible_ssh_user: "vagrant", csrgen_version: CSRGEN_VERSION }
    ansible.sudo = true
    ansible.groups = {
      "qa" => "cent7"
    }
  end
end
