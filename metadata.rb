# Encoding: utf-8
name             'chefdk-demo'
maintainer       'Martin Smith'
maintainer_email 'martin@mbs3.org'
license          'Apache 2.0'
description      'Installs/Configures chefdk and/or rvm, rbenv'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt'
depends 'yum'
depends 'chef-sugar'

depends 'build-essential'
depends 'rvm'
depends 'rbenv'
