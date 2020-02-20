desc 'Alias for strings:generate'
task :doc => ['strings:generate']

desc 'Generate REFERENCE.md'
task :reference do
  sh 'puppet strings generate --format markdown'
end

desc 'Run acceptance tests'
RSpec::Core::RakeTask.new(:acceptance) do |t|
  t.pattern = 'spec/acceptance'
end

namespace :acceptance do
  desc 'Run acceptance tests against current code for Windows'
  RSpec::Core::RakeTask.new(:windows) do |t|
    t.pattern = 'spec/acceptance/windows_spec.rb'
  end
end
