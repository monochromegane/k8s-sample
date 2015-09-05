include_recipe "../cookbooks/selinux/disabled.rb"
include_recipe "../cookbooks/firewalld/stop_and_disable.rb"
include_recipe "../cookbooks/ntp/default.rb"

include_recipe "../cookbooks/etcd/default.rb"
include_recipe "../cookbooks/kubernetes/default.rb"
include_recipe "../cookbooks/etcd/define_flannel_config.rb"
