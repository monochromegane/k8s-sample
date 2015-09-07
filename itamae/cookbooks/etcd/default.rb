package 'etcd'

template '/etc/etcd/etcd.conf'

service 'etcd' do
  action [:start, :enable]
end

node.reverse_merge!({
  kubernetes: {
    flannel: {
      ip_range: '172.16.0.0/16'
    } 
  }
})

execute 'define flannel config'do
  command %Q(sleep 5 && etcdctl mk /coreos.com/network/config '{"Network":"#{node.kubernetes.flannel.ip_range}"}')
  not_if 'etcdctl get /coreos.com/network/config'
end
