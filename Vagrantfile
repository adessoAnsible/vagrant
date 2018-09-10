Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|
	config.vm.box = "ubuntu-18"
	config.vm.box_url = "https://lmv-ulm.adesso.ch/external_media/ubuntu-18.04-201808.box"

	# Display the VirtualBox GUI when booting the machine
	vb.gui = true
	
	config.vm.provider "virtualbox" do |v|
	    v.memory = 8196
        v.cpus = 2
	end

	class Repositoryname
        def to_s
            print "Where is the git repository of your ansible setup?.\n"
            print "Git-Repository (git.isceco.admin.ch/isceco/absatzplanung-setup): "
            STDIN.gets.chomp
        end
    end

	class NexusUsername
        def to_s
            print "Virtual machine needs your nexus user and password.\n"
            print "Username: "
            STDIN.gets.chomp
        end
    end

    class NexusPassword
        def to_s
            begin
            system 'stty -echo'
            print "Password: "
            pass = URI.escape(STDIN.gets.chomp)
            ensure
            system 'stty echo'
            end
            pass
        end
    end

	config.vm.provision :shell, :privileged => true, :path => "setup.sh"
	config.vm.provision :shell, env: {"REPOSITORY" => Repositoryname.new, "GIT_USERNAME" => GitUsername.new, "GIT_PASSWORD" => GitPassword.new, "NEXUS_USERNAME" => NexusUsername.new, "NEXUS_PASSWORD" => NexusPassword.new}, :privileged => false, :path => "startAnsible.sh"
end
