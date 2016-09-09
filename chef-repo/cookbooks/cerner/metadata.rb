name             'cerner'
maintainer       'Mohit Sethi'
maintainer_email 'mohit@sethis.in'
license          'All rights reserved'
description      'Installs/Configures cerner'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

depends 'apt'
depends 'yum'
depends 'ntp'

supports 'debian'
supports 'ubuntu'
supports 'redhat'
supports 'centos'


