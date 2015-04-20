require "bundler/gem_tasks"
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

Cucumber::Rake::Task.new(:features, 'Run the features') do |task|
  task.profile = 'default'
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.ruby_opts = '-I lib:spec'
  spec.pattern = 'spec/**/*_spec.rb'
end

task :test => ['spec', 'features']

task :default => :test
