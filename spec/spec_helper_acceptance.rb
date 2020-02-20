require 'beaker-rspec'
require 'beaker-puppet'
require 'beaker/module_install_helper'
require 'beaker/puppet_install_helper'

run_puppet_install_helper
install_module_dependencies
install_module

# TODO does this solve https://ci.appveyor.com/project/ghoneycutt/puppet-module-facter/build/job/mj98gonri15otyqh
if Gem.win_platform?
  set :backend, :cmd
end

RSpec.configure do |c|
  # Readable test descriptions
  c.formatter = :documentation
end
