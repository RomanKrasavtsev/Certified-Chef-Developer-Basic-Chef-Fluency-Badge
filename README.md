# Chef

## Test Kitchen
```
kitchen init --create-gemfile
bundle install
vim .kitchen.yml
kitchen create default-centos65
```
## Install chef-client
```
curl -Lk https://www.getchef.com/chef/install.sh | sudo bash
chef-client --version
```

# VirtualBox
```
VBoxManage list runningvms
```
