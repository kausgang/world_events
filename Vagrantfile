IMAGE_NAME = "bento/ubuntu-20.04"


Vagrant.configure("2") do |config|
    # config.ssh.insert_key = false

    # config.vm.provision "shell", path: "bootstrap.sh"

    # # config.vm.provider "virtualbox" do |v|
    # #     v.memory = 3072
    # #     v.cpus = 2
    # # end
      
    config.vm.define "master" do |master|

        master.vm.provider "virtualbox" do |v|
            v.name    = "master"
            v.memory = 1024
            v.cpus = 1
        end

        master.vm.box = IMAGE_NAME

        master.vm.box_check_update  = false
        # master.vm.hostname = "master"
        
        # master.vm.network "private_network", ip: "172.16.16.100"

        master.vm.synced_folder "./DATABASE", "/vagrant_data"

        master.vm.provision "shell",
            # inline: "bash <(wget -qO- https://raw.githubusercontent.com/kausgang/Kubernetes-Template/main/VAGRANT-auto-setup-WINDOWS/setup-master.sh)"
            path: "setup-DB.sh"
            
    end


  
end
