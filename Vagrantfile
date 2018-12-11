# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "mac" do |mac|
    #mac.vm.box = "https://vagrant-osx.nyc3.digitaloceanspaces.com/osx-sierra-0.3.1.box"
    mac.vm.box = "monsenso/macos-10.13"
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "peru/ubuntu-18.04-desktop-amd64"
  end

  config.vm.synced_folder ".", "/opt/core"

  config.vm.provision "shell" do |s|
    s.inline = "/bin/bash /opt/core/install.sh"
    s.privileged = false
  end

end
