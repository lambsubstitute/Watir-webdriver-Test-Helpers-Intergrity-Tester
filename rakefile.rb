require 'cucumber/rake/task'
require './features/support/cucumber_settings'

desc "Runs Cucumber scenarios with @automated tags in pretty format"
Cucumber::Rake::Task.new :generate_acceptance_pretty_format do |t|
  t.cucumber_opts = "--tags @automated --format pretty"
end



task :default => :cucumber