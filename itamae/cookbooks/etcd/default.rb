package 'etcd'

template '/etc/etcd/etcd.conf'

service 'etcd' do
  action [:start, :enable]
end

execute 'define flannel config'do
  command 'sleep 5 && etcdctl mk /coreos.com/network/config \'{"Network":"172.17.0.0/16"}\''
  not_if 'etcdctl get /coreos.com/network/config'
end
