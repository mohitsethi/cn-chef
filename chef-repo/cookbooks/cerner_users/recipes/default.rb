# #
# # Cookbook Name:: cerner_users
# # Recipe:: default
# #
# # Copyright 2016, YOUR_COMPANY_NAME
# #
# # All rights reserved - Do Not Redistribute
# #

# # include_recipe 'apt'

# # package 'apache2'do 
# #   version node['cerner_users']['apache_vers']
# # end

# node.override['cerner_users']["users"] = ['ms1', 'ms2']

# users = node['cerner_users']['users']

# users.each do |cs_user|
#   user cs_user do
#     comment 'A random user'
#     # uid '1234'
#     # gid '1234'
#     home "/home/#{cs_user}"
#     manage_home true
#     shell '/bin/bash'
#     password 'cs_super_secure_passwd'
#     action [:create, :modify]
#   end
# end

# service 'apache2' do
#   action [:reload]
#   subscribes :create, "template['/var/www/html/index.html']", :timer
# end

# include_recipe 'cerner_users::apache'








