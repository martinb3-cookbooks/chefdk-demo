include_recipe 'build-essential'
include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

rbenv_ruby node['chefdk-demo']['ruby_version'] do
  global true
end

include_recipe 'chefdk-demo'

link '/opt/rbenv/versions/chefdk' do
  to '/opt/chefdk/embedded'
end
