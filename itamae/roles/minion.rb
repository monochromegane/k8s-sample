node.validate! do
  {
    master: {
      host: string
    },
    minion: {
      host: string
    }
  }
end

include_recipe 'selinux::disabled'
include_recipe '../cookbooks/firewalld/service.rb'
include_recipe '../cookbooks/ntp/default.rb'

include_recipe '../cookbooks/flannel/default.rb'
include_recipe '../cookbooks/kubernetes/default.rb'
include_recipe '../cookbooks/kubernetes/minion/default.rb'
