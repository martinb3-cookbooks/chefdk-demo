# chefdk-demo

[Chef Development Kit](https://downloads.getchef.com/chef-dk/) (ChefDK) is, "a
streamlined development and deployment workflow for Chef platform. [ChefDK]
brings the best-of-breed development tools built by the awesome Chef community
to your workstation with just a few clicks." [(source)](https://downloads.getchef.com/chef-dk/)
You can also find out more by visiting the Github repository at  [opscode/chef-dk](https://github.com/opscode/chef-dk).

This project is intended to be a demo of chef-dk features, as well as trying to
show how it might be integrated with rvm or rbenv. See the test directory for
serverspec tests that demonstrate how a shell can be activated for use with
chef-dk, rbenv, or rvm. `$PATH` is always going to have chef-dk binaries in
front, until you activate rbenv or rvm, and even then, some binaries like `chef`
have no gem analog, so will still be available on your path.

## Switching rubies/ruby managers

To activate chef-dk:
```
$(chef shell-init bash)
```

To activate rbenv:
```
$(rbenv init -)
```

To activate chef-dk __*from rbenv*__:
```
rbenv version chefdk
```


To activate rvm:
```
rvm use 2.1.2
```



## Recipes

### default

Simply pulls down a package for chef-dk and installs it. You will need a
test-kitchen provisioner or something else to install chef first, as chef is
required to converge this cookbook at all.

It doesn't matter if you use the chef omnibus installer or not.

### rbenv

Installs rbenv, a system ruby (version `node['chefdk-demo']['ruby_version']`),
and calls `chefdk-demo::default` to install chefdk.

Also adds a symlink to chef-dk's embedded ruby, so that you might simply type
`rbenv chefdk` to activate chefk-dk and still co-exist with rbenv.

### rvm

Installs rvm, a system ruby (version `node['chefdk-demo']['ruby_version']`),
and calls `chefdk-demo::default` to install chefdk.
