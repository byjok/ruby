require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = " features/searchPhone.feature --require features --format html --out report.html --format pretty"
  end

task :default => :features


