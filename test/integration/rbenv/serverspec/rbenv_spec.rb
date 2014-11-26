describe wrapped_command('( $(/opt/rbenv/bin/rbenv init -); which ruby )') do
  its(:stdout) { should match(%r(/opt/rbenv/shims/ruby)) }
end

# check that rbenv has a symlink out to chefdk
describe wrapped_command('/opt/rbenv/bin/rbenv versions') do
  its(:stdout) { should match(/chefdk/) }
end
