# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = 'opscode-ubuntu-14.04'
  config.vm.box_url = 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box'
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

  # config.vm.provision :shell, inline: 'sudo apt-get update -y'

  config.vm.define :cerner_aio do |vm_config|
    vm_config.vm.network "forwarded_port", guest: 80, host: 8080

    vm_config.vm.provision "chef_client" do |chef|
      # chef.log_level = ENV['CHEF_LOG'] || 'debug'
      chef.install       = true
      chef.chef_server_url = "https://api.chef.io/organizations/cerner-chef"
      chef.validation_key_path = "./chef-repo/.chef/cerner-chef-validator.pem"
      chef.node_name = "cernerdev01"
      chef.validation_client_name = 'cerner-chef-validator'
      chef.environment = "cerner_stage"

      # chef.http_proxy    = proxy
      # chef.https_proxy   = proxy
      # chef.cookbooks_path = ["#{Dir.pwd}/chef-repo/cookbooks"]
      # chef.cookbooks_path = [ dir_cookbooks, "#{Dir.pwd}/.chef/cookbooks" ]
      # chef.cookbooks_path = "#{Dir.pwd}/cookbooks"
      # chef.add_recipe "workstation::dev"
      # chef.add_recipe "workstation::pulsardev"
      # chef.add_recipe 'redis::server'
      # chef.add_recipe 'midas-ellk::elastic_search'
      # chef.add_role "workstation"
      # chef.add_recipe "java::oracle"
      # chef.add_recipe "openldap::server"
      # chef.add_recipe 'ms_cerner'
      # chef.add_recipe 'ms_cerner::helloworldfile'
      # chef.add_recipe 'cerner_users'

      chef.add_role 'base_cerner'

      # chef.add_recipe 'ms_cerner::default'
    end
  end

  config.vm.define :cerner_aio_02 do |vm_config|
    vm_config.vm.network "forwarded_port", guest: 80, host: 8080

    vm_config.vm.provision "chef_client" do |chef|
      chef.log_level = ENV['CHEF_LOG'] || 'debug'
      chef.install       = true
      chef.chef_server_url = "https://api.chef.io/organizations/cerner-chef"
      chef.validation_key_path = "./chef-repo/.chef/cerner-chef-validator.pem"
      chef.node_name = "cernerdev01"
      chef.validation_client_name = 'cerner-chef-validator'
      chef.delete_node = true
      chef.delete_client = true

      # chef.http_proxy    = proxy
      # chef.https_proxy   = proxy
      # chef.cookbooks_path = ["#{Dir.pwd}/chef-repo/cookbooks"]
      # chef.cookbooks_path = [ dir_cookbooks, "#{Dir.pwd}/.chef/cookbooks" ]
      # chef.cookbooks_path = "#{Dir.pwd}/cookbooks"
      # chef.add_recipe "workstation::dev"
      # chef.add_recipe "workstation::pulsardev"
      # chef.add_recipe 'redis::server'
      # chef.add_recipe 'midas-ellk::elastic_search'
      # chef.add_role "workstation"
      # chef.add_recipe "java::oracle"
      # chef.add_recipe "openldap::server"
      chef.add_recipe 'ms_cerner'
      # chef.add_recipe 'ms_cerner::default'
    end
  end

end
