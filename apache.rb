package 'apache' do
  package_name 'httpd'
end

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content 'hello wordl!'
  mode '0755'
  owner 'root'
  group 'apache'
end
