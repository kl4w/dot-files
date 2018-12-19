# -*- mode: ruby -*-
# vi: set ft=ruby :

# Returns true if `GUI` environment variable is set to a non-empty value.
# Defaults to false
def gui_enabled?
  !ENV.fetch('GUI', '').empty?
end

Vagrant.configure("2") do |config|

  config.vm.provider 'virtualbox' do |v|
    v.gui = gui_enabled?
  end

  # https://github.com/hashicorp/vagrant/issues/10234
  # https://askubuntu.com/questions/412525/vagrant-up-and-annoying-nfs-password-asking
  config.vm.define "mac" do |mac|
    #mac.vm.box = "https://vagrant-osx.nyc3.digitaloceanspaces.com/osx-sierra-0.3.1.box"
    mac.vm.box = "monsenso/macos-10.13"
    mac.vm.network :private_network, ip: "192.168.10.2"
    mac.vm.synced_folder ".", "/opt/core", type: "nfs"
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "peru/ubuntu-18.04-desktop-amd64"
    ubuntu.vm.synced_folder ".", "/opt/core"
  end

  config.vm.provision "shell" do |s|
    s.inline = "/bin/bash /opt/core/install.sh"
    s.privileged = false
  end

end
