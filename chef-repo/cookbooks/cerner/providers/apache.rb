

action :create do

  # Steps 
  # 1. Make sure apache is installed,
  # 2. Make sure service is running,
  # 3. Setup custom home page.

  package 'apache2' if platform_family?('debian')
  package 'httpd' if platform_family?('redhat')

end

action :delete do
  # Steps 
  # 1. Remove custom home page.
  # 2. Make sure service is stopped,
  # 3. Make sure apache is removed,

  if platform_family?('debian')
    package 'apache2' do 
      action [:remove, :purge]
    end
  elsif platform_family?('redhat')
    package 'httpd' do
      action :delete
    end
  end

end
