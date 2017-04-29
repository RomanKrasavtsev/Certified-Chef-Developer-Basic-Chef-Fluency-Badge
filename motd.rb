file '/etc/motd' do
  content 'Hello Roman!'
end

execute 'echo' do
  command 'echo " How are you?" >> /etc/motd'
  only_if 'test -r /etc/motd'
end
