include_recipe 'chef-sugar'

package_url = node['chefdk-demo']['package_url']
provider =
fail "node['chefdk-demo']['package_url'] was nil" unless node['chefdk-demo']['package_url']

base_name = package_url.split('/').last
dest_path = "#{Chef::Config[:file_cache_path]}/#{base_name}"

remote_file dest_path do
  source package_url
end

package 'chefdk' do
  source dest_path
  provider node['chefdk-demo']['package_provider']
end
