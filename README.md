# Installation
```
wget https://packages.chef.io/files/stable/chefdk/1.3.43/el/6/chefdk-1.3.43-1.el6.x86_64.rpm
sudo prm -ivh chefdk-1.3.43-1.el6.x86_64.rpm
```
# Check syntax

## Ruby syntax
`ruby -c apache.rb`

## Chef syntax
`foodcritic apache.rb`

# Applying
`sudo chef-client --local-mode apache.rb`

# Chef
```
chef generate cookbook motd || knife cookbook create
chef generate file motd
kitchen converge default-centos65
```
```
ohai
```
```ruby
node["hostname"]
```

## Test Kitchen
```
kitchen init --create-gemfile
bundle install
vim .kitchen.yml
kitchen create default-centos65
kitchen setup default-centos65
kitchen list
kitchen login default-centos65
kitchen destroy default-centos65 
```
## Install chef-client
```
curl -Lk https://www.getchef.com/chef/install.sh | sudo bash
chef-client --version
```

# VirtualBox
```
VBoxManage --version
VBoxManage list runningvms
```

# Vagrant
```
vagrant global-status
```
