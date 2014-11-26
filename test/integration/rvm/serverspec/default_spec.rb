# Encoding: utf-8

require_relative 'spec_helper'

verify_components = %w(
  berkshelf
  chef-dk
  chefspec
  chef-client
  test-kitchen
)

describe command('chef verify') do
  verify_components.each do |s|
    its(:stdout) { should match(/Verification of component '#{s}' succeeded./) }
  end
end

describe command('( $(chef shell-init bash); which ruby )') do
  its(:stdout) { should match(%r(/opt/chefdk/embedded/bin/ruby)) }
end
