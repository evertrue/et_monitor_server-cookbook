set['shinken']['install_type'] = 'source'
set['shinken']['commands']['check_http_nostatus'] = {
  'command_name' => 'check_http_nostatus',
  'command_line' => '$NAGIOSPLUGINSDIR$/check_http -I $HOSTADDRESS$ ' \
                    '--onredirect=follow --port=$ARG1$ --expect=HTTP'
}
