service 'kube-apiserver' do
  action [:start, :enable]
end

service 'kube-controller-manager' do
  action [:start, :enable]
end

service 'kube-scheduler' do
  action [:start, :enable]
end
