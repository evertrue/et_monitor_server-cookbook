name             'et_monitor_server'
maintainer       'EverTrue, Inc.'
maintainer_email 'devops@evertrue.com'
license          'All rights reserved'
description      'Monitor server wrapper cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.4.2'

depends 'shinken', '~> 1.7'
depends 'et_hostname', '~> 1.1'
