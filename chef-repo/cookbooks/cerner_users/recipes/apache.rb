template '/var/www/html/index.html' do
  source 'index.html.erb'
  # owner 'root'
  # group 'root'
  mode '0755'
  # notifies :reload, 'service[apache2]', :immediately
end

# service 'apache2' do
#   action [:start, :reload]
# end

package 'vim'

# service 'apache2' do
#   action [:nothing]
# end
