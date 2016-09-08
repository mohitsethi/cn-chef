# my_contents = node['ms_cerver']['file_contents']

# file "hello.txt" do
#   # content "Hello, world!"
#   content my_contents
#   action :create_if_missing
# end


my_packages = ["nano", "vim", "emacs", "tree"]


my_packages.each do |pkg|
  # package pkg
  package pkg do
    action :upgrade
  end
end

file "/etc/motd" do
  content "Property of ..."
end
