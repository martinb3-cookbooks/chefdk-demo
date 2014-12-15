# install chefdk using a package (by default)
include_recipe 'chef-dk'

# for demo data in other recipes
directory node['chefdk-demo']['base_dir']
