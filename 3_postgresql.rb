package 'posrgresql-server' do
  notifies :run, 'execute[postgresql-init]', :immediatelly
end

execute 'postgresql-init' do
  command 'postgresql-setup initdb'
  action :nothing
end

service 'postgresql' do
  action [:start, :enabled]
end
