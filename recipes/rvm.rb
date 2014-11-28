## show how to install rvm side by side with chefdk
include_recipe 'chefdk-demo'
include_recipe 'build-essential'

# install rvm and ruby
node.set['rvm']['default_ruby'] = node['chefdk-demo']['ruby_version']
include_recipe 'rvm::system'
