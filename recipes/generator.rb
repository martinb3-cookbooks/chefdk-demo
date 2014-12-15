## showcase the generator feature of chef-dk
include_recipe 'chefdk-demo'

# FYI -- normal generator is at '/opt/chefdk/embedded/apps/chef-dk/lib/chef-dk/skeletons/code_generator'
# copy in our own generator from this cookbook
remote_directory '/opt/demo/code_generator' do
  recursive true
  source 'code_generator'
end

# turn the crank and build an output cookbook from the template installed above
bash 'chef generate cookbook' do
  cwd node['chefdk-demo']['base_dir']
  code <<-EOH
    $(chef shell-init bash)
    chef generate cookbook #{node['chefdk-demo']['output_cookbook_name']} \
     --generator-cookbook #{node['chefdk-demo']['base_dir']}
  EOH
end

# Go run `kitchen test` on 'default' suite to check output cookbook is correct
# e.g. `kitchen test default -c` to test default on both platforms
