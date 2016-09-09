#
# Cookbook Name:: cerner
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ntp'

cerner_apache "product1" do
  action :delete
end
