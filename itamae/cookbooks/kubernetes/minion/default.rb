package 'git'

template '/etc/kubernetes/config' do
  variables(kube_master: 'http://172.16.1.10:8080')
end

template '/etc/kubernetes/kubelet' do
  variables(
    kubelet_api_server: 'http://172.16.1.10:8080',
    kubelet_hostname:   '172.16.1.11'
  )
end

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
