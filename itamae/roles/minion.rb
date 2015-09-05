include_recipe "../cookbooks/selinux/disabled.rb"
include_recipe "../cookbooks/firewalld/stop_and_disable.rb"
include_recipe "../cookbooks/ntp/default.rb"

include_recipe "../cookbooks/flannel/default.rb"
include_recipe "../cookbooks/kubernetes/default.rb"
include_recipe "../cookbooks/kubernetes/config_minion.rb"
include_recipe "../cookbooks/kubernetes/start_and_enable_minion_service.rb"
