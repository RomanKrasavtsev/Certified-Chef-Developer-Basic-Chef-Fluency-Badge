# ChefSDK. Installation
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
or
`sudo chef-client -z apache.rb`

# Generate cookbook
`chef generate cookbook PATH/COOKBOOKNAME`

# Chef Server. Installation
```
wget  https://packages.chef.io/files/stable/chef-server/12.15.0/el/7/chef-server-core-12.15.0-1.el7.x86_64.rpm
sudo rpm -ihv chef-server-core-12.15.0-1.el7.x86_64.rpm
sudo chef-server-ctl reconfigure
sudo chef-server-ctl user-create username firstname lastname email password --filename firstname-lastname-rsa
sudo chef-server-ctl org-create company 'Company, Inc' --association_user username --filename company-validator.pem
```

# Chef Manage. Installation
```
sudo chef-server-ctl install chef-manage
sudo chef-manage-ctl reconfigure
```

# Upload cookbook
`knife cookbook upload cookbook_name`

# Add node
```
cd chef-repo
sudo knife ssl fetch
knife bootstrap node_ip -N node_name --ssh-user username --sudo
```
# Node list
`knife node list`

# Node run_list
```
knife node run_list add node_name recipe['cookbook::recipe']
knife node run_list remove node_name recipe['cookbook::recipe']
knife node run_list set node_name "role[role_name]"
```

# Node show
`knife node show node_name`
## all information
`knife node show -l node_name`

# Chef-client why-mode
`chef-client --why-run`
# Knife search
```
knife search 'platform_family:rhel
knife search 'recipes:apache'
knife seacrh 'recipes:apache\:\:websites' -a hostname
```
# Knife ssh
`knife ssh "role:web" "sudo chef-client" -x user -P password`

# knife role
```
export EDITOR=$(which vim)
knife role create role_name
knife role edit role_name
```
# From book
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
