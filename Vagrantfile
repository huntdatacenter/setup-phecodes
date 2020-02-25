Vagrant.configure(2) do |config|
  config.vm.define "box" do |dev|
    # Select the box
    dev.vm.box = "bento/ubuntu-16.04"

    # Run playbook
    dev.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "setup.yaml"
      ansible.install_mode = "pip"
      ansible.version = "2.9.5"
    end
  end
end
