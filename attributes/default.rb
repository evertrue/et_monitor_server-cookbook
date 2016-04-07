set['shinken']['install_type'] = 'source'
set['shinken']['commands']['check_http_nostatus'] = {
  'command_name' => 'check_http_nostatus',
  'command_line' => '$NAGIOSPLUGINSDIR$/check_http -I $HOSTADDRESS$ ' \
                    '--onredirect=follow --port=$ARG1$ --expect=HTTP'
}
set['shinken']['commands']['check_remote_process'] = {
  'command_name' => 'check_remote_process',
  'command_line' => '$NAGIOSPLUGINSDIR$/check_by_ssh ' \
                    '-H $HOSTADDRESS$ ' \
                    "--logname #{node['shinken']['agent_user']} " \
                    "--command='pgrep -f $ARG1$' " \
                    '-o StrictHostKeyChecking=no ' \
                    "--identity=#{node['shinken']['home']}/.ssh/id_rsa"
}

set['shinken']['services']['storage_inodes'] = {
  'hostgroup_name' => 'linux',
  'service_description' => 'Inode consumption check',
  'check_command' => 'check_inodes'
}
