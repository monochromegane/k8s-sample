package 'git'

template '/etc/kubernetes/config'
template '/etc/kubernetes/kubelet'

service 'kube-proxy' do
  action [:start, :enable]
end

service 'kubelet' do
  action [:start, :enable]
end

service 'docker' do
  action [:start, :enable]
end

service 'flanneld' do
  action [:start, :enable]
end
