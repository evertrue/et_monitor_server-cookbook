name             'et_monitoring'
maintainer       'EverTrue, Inc.'
maintainer_email 'devops@evertrue.com'
license          'All rights reserved'
description      'Installs/Configures et_monitoring'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.6.0'

depends 'newrelic-ng', '~> 0.4.0'
depends 'et_datadog', '= 1.0.1'
depends 'shinken', '= 1.0.1'
