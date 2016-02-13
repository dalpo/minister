begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rdoc/task'
require 'rubocop/rake_task'

require File.expand_path('../spec/dummy/config/application', __FILE__)
APP_RAKEFILE = File.expand_path('../spec/dummy/Rakefile', __FILE__)

load 'rails/tasks/engine.rake'
load 'rails/tasks/statistics.rake'

Bundler::GemHelper.install_tasks

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Minister'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

if defined? RSpec
  task(:spec).clear

  RSpec::Core::RakeTask.new(:spec) do |task|
    task.verbose = false
  end
end

RuboCop::RakeTask.new do |task|
end

task default: [:spec, :rubocop]
