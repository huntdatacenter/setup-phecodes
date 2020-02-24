Vagrant.configure(2) do |config|
  config.vm.define "box" do |dev|
    # Select the box
    dev.vm.box = "bento/ubuntu-16.04"

    # Run playbook
    dev.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "setup.yaml"
    end

    # Configure virtualbox
    dev.vm.provider "virtualbox" do |vbox|
      vbox.memory = 2048
    end
  end
end
