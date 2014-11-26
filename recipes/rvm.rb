include_recipe 'build-essential'

node.set['rvm']['default_ruby'] = node['chefdk-demo']['ruby_version']
include_recipe 'rvm::system'

include_recipe 'chefdk-demo'
