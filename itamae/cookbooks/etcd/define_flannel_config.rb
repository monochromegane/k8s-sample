execute 'define flannel config'do
  command 'etcdctl mk /coreos.com/network/config \'{"Network":"172.17.0.0/16"}\''
  not_if 'etcdctl get /coreos.com/network/config'
end
