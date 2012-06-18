require 'cucumber/rake/task'
require './features/support/cucumber_settings'

desc "Runs Cucumber scenarios with @automated tags in pretty format - this is the full browser integrity test"
Cucumber::Rake::Task.new :generate_browser_helpers_integrity_test do |t|
  t.cucumber_opts = "--tags @automated --format pretty"
end



task :default => :cucumber