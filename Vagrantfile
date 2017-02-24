Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 9092, host: 9092

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  ## New lines below to say "Hey, let's use Ansible my wandering vagrant friend!"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
  end
end
