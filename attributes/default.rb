set['shinken']['install_type'] = 'source'
set['shinken']['commands']['check_http_nostatus'] = {
  'command_line' => '$NAGIOSPLUGINSDIR$/check_http -I $HOSTADDRESS$ ' \
                    '--onredirect=follow --port=$ARG1$ --expect=HTTP'
}

set['shinken']['services']['storage_inodes'] = {
  'hostgroup_name' => 'everything',
  'service_description' => 'Inode consumption check'
}
set['shinken']['services']['consul_memory'] = {
  'hostgroup_name' => 'everything',
  'service_description' => 'Consul process max memory threshold 80M',
  'check_command' => 'check_remote_process_memory!consul!81920'
}

set['shinken']['hostgroups']['everything'] = {
  'search_str' => '*:*',
  'conf' => {
    'alias' => "All #{node.chef_environment} hosts"
  }
}

override['shinken']['host_defaults']['event_handler'] = 'notify_slack_for_host!#ops'
override['shinken']['host_defaults']['event_handler_enabled'] = 1
