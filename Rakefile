# Bundler tasks
require 'bundler'
Bundler::GemHelper.install_tasks

# Test tasks
require 'rake'
require 'rake/testtask'

desc "Run basic tests"
Rake::TestTask.new("test_units") { |t|
  t.pattern = 'test/*/*/*_test.rb'
  t.verbose = true
  t.warning = true
}

task :default => [:test_units]