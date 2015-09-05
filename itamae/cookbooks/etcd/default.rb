package 'etcd'

service 'etcd' do
  action [:start, :enable]
end
