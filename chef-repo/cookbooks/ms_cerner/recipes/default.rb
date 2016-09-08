#
# Cookbook Name:: ms_cerner
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

package 'apache2' do
  action :install
end

service 'apache2' do
  action [:start, :reload]
end

# node['ms_cerner']['var1']
