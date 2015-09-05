package 'ntp'

service 'ntpd' do
  action [:start, :enable]
end
