# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
NODE_NAME = "vagrant.aws.tools" 

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|



  config.vm.define 'aws' do |aws| 
    aws.vm.box = "ubuntu/trusty64"
    aws.vm.hostname = NODE_NAME
    aws.vm.network "private_network", ip: "11.11.11.10"

    aws.vm.provider :virtualbox do |vb|
      vb.gui = false

      vb.customize ['modifyvm', :id, '--memory', '4096']
      vb.customize ['modifyvm', :id, '--name',   NODE_NAME ]
    end
    
    aws.vm.provision "ansible" do |ansible| 
      ansible.playbook = "playbooks/vagrant.yml"
      ansible.verbose  = "vv" 
      ansible.tags     = "vagrant"
    end
  end


  config.vm.define 'awsBox' do |awsBox| 
    awsBox.vm.box = "emiliano/aws-tools"
    awsBox.vm.hostname = NODE_NAME
    awsBox.vm.network "private_network", ip: "11.11.11.10"

    awsBox.vm.provider :virtualbox do |vb|
      vb.gui = false

      vb.customize ['modifyvm', :id, '--memory', '4096']
      vb.customize ['modifyvm', :id, '--name',   NODE_NAME ]
    end
    


  end

end
