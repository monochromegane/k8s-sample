# see: https://github.com/kubernetes/kubernetes/issues/11355#issuecomment-127378691
execute 'generate service account token' do
  command 'mkdir -p /etc/pki/kube-apiserver/ && openssl genrsa -out /etc/pki/kube-apiserver/serviceaccount.key 2048'
  not_if 'test -e /etc/pki/kube-apiserver/serviceaccount.key'
end

template '/etc/kubernetes/apiserver'
template '/etc/kubernetes/controller-manager'

service 'kube-apiserver' do
  action [:start, :enable]
end

service 'kube-controller-manager' do
  action [:start, :enable]
end

service 'kube-scheduler' do
  action [:start, :enable]
end
