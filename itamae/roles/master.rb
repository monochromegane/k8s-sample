include_recipe 'selinux::disabled'
include_recipe '../cookbooks/firewalld/service.rb'
include_recipe '../cookbooks/ntp/default.rb'

include_recipe '../cookbooks/etcd/default.rb'
include_recipe '../cookbooks/kubernetes/default.rb'
include_recipe '../cookbooks/kubernetes/master/service.rb'
