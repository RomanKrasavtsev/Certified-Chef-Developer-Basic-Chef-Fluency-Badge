# Chef
```
ohai
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
