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
  'max_check_attempts' => 10,
  'check_interval' => 240,
  'service_description' => 'Consul process max memory threshold 120M',
  'check_command' => 'check_remote_process_memory!consul!122880',
  'event_handler' => 'notify_slack_for_host_service!#ops-dev'
}
set['shinken']['services']['excessive_deleted_files'] = {
  'hostgroup_name' => 'everything',
  'max_check_attempts' => 5,
  'check_interval' => 240,
  'service_description' => 'Deleted files exceeded 32',
  'check_command' => 'check_deleted_files!32',
  'event_handler' => 'notify_slack_for_host_service!#ops-dev'
}

set['shinken']['hostgroups']['everything'] = {
  'search_str' => '*:*',
  'conf' => {
    'alias' => "All #{node.chef_environment} hosts"
  }
}

override['shinken']['host_defaults']['event_handler'] = 'notify_slack_for_host!#ops'
override['shinken']['host_defaults']['event_handler_enabled'] = 1
