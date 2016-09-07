# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = 'opscode-ubuntu-14.04'
  config.vm.hostname = 'cerner-chef'

  # Virtualbox
  config.vm.provider 'virtualbox' do |vb|
    vb.customize [
      'modifyvm', :id,
      '--memory', '1024',
      '--cpus', 1,
      '--ioapic', 'on'
    ]
  end

  # config.vm.provider 'virtualbox' do |v|
  #   # v.customize ["modifyvm", :id, "--memory", local_config['ram'] || "1024"]
  #   v.memory = local_config['ram'] || 1024
  #   v.cpus = local_config['cpu'] || 1
  #   # v.gui = true
  # end

  config.vm.provision :shell, inline: 'sudo apt-get update -y'

  config.vm.define :aio do |vm_config|

    vm_config.vm.provision :chef_solo do |chef|
      chef.log_level = ENV['CHEF_LOG'] || 'debug'
      chef.install       = false
      # chef.http_proxy    = proxy
      # chef.https_proxy   = proxy
      # chef.cookbooks_path = [ dir_cookbooks, "#{Dir.pwd}/.chef/cookbooks" ]
      # chef.cookbooks_path = "#{Dir.pwd}/cookbooks"
      # chef.add_recipe "workstation::dev"
      # chef.add_recipe "workstation::pulsardev"
      # chef.add_recipe 'redis::server'
      # chef.add_recipe 'midas-ellk::elastic_search'
      # chef.add_role "workstation"
      # chef.add_recipe "java::oracle"
      # chef.add_recipe "openldap::server"
    end
  end

end
