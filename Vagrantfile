Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|
	config.vm.box = "fransimo/ubuntu-18-BETA-desktop"
	config.vm.box_version = "0.1"

	config.vm.provision :shell, :privileged => true, :path => "setup.sh"
	config.vm.provision :shell, :privileged => false, :path => "startAnsible.sh"
end