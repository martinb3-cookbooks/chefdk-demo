context = ChefDK::Generator.context
cookbook_dir = File.join(context.cookbook_root, context.cookbook_name)

flag_name = 'redis'
redis_flag_value = context.send(flag_name.to_sym)
log "REDIS FLAG SET #{redis_flag_value}"

types = %w(base single master slave sentinel)
types.each do |t|
  template "#{cookbook_dir}/recipes/redis_#{t}.rb" do
    source "redis/redis_#{t}.rb.erb"
    helpers(ChefDK::Generator::TemplateHelper)
    action :create_if_missing
  end
end
