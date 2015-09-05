package 'etcd'

template '/etc/etcd/etcd.conf'

service 'etcd' do
  action [:start, :enable]
end
