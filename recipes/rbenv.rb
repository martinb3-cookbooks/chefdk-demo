## show how to install rbenv side by side with chefdk
include_recipe 'chefdk-demo'
include_recipe 'build-essential'

# install rbenv and ruby
include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'
rbenv_ruby node['chefdk-demo']['ruby_version'] do
  global true
end

# to make rbenv think chefdk is another ruby it manages
link '/opt/rbenv/versions/chefdk' do
  to '/opt/chefdk/embedded'
end
