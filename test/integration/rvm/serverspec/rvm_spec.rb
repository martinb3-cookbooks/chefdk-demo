describe wrapped_command('( /usr/local/rvm/bin/rvm use 2.1.2; which ruby )') do
  its(:stdout) { should match(%r(/usr/local/rvm/rubies/ruby-2.1.2/bin/ruby)) }
end
