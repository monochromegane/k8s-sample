package 'flannel'

template '/etc/sysconfig/flanneld' do
  variables(flannel_etcd: 'http://172.16.1.10:2379')
end
