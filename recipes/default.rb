r = search(:node,
           "chef_environment:#{node.chef_environment} AND " \
           'ec2_public_hostname:*')

non_vpc_hosts = r.select do |n|
  n['ec2']['network_interfaces_macs'].find { |_k, v| v['vpc_id'] }.nil?
end

node.set['et_hostname']['addl_hosts_entries'] =
  non_vpc_hosts.map { |n| "#{n['ec2']['public_ipv4']} #{n['fqdn']}" }

include_recipe 'et_hostname'
include_recipe 'shinken'
include_recipe 'shinken::webui'
include_recipe 'shinken::broker'
