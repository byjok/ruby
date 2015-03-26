require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --require features/step_definitions features/tests/searchPhone.feature"
  end

task :default => :features


