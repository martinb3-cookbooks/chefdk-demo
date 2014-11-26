case node['platform_family']
when 'rhel'
  default['chefdk-demo']['package_url'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.3.5-1.x86_64.rpm'
  default['chefdk-demo']['package_provider'] = Chef::Provider::Package::Rpm
when 'debian'
  default['chefdk-demo']['package_url'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.3.5-1_amd64.deb'
  default['chefdk-demo']['package_provider'] = Chef::Provider::Package::Dpkg
else
  default['chefdk-demo']['package_url'] = nil
  default['chefdk-demo']['package_provider'] = nil
end

default['chefdk-demo']['ruby_version'] = '2.1.2'
