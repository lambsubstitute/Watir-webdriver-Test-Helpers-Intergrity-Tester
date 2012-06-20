#coding: utf-8
require 'watir-webdriver'
require 'rubygems'
require 'rspec/expectations'
require 'watir-webdriver-performance'
include Test::Unit::Assertions
#require 'synchronize'
#require 'debugger'
#require 'gherkin'
#require 'features/support/cucumber_settings'

#config to run in firefox with clean profile
profile = Selenium::WebDriver::Firefox::Profile.new
browser = Watir::Browser.new :firefox, :profile => profile

#config to run ie - BEWARE THIS IS SLOW, ONLY REALLY GOOD FOR OVERNIGHT
#browser = Watir::Browser.new :ie

Before do

   #require 'features/support/cucumber_settings'


  #ENV['@base_url'] = LOCALURL
  #ENV['@base_url2'] = LOCALADD
  #@base_url2 = LOCALADD
  #@base_url = LOCALURL
  #if ENV['ENVIRONMENT'] == "auto"
  #  ENV['@base_url'] = AUTOURL
  #  ENV['@base_url2'] = AUTOADD
   ## @base_url = AUTOURL
   # @base_url2 = AUTOADD
  #end

  @browser = browser
  #@results_table_timeout = RESULTS_TABLE_TIMEOUT
end


Before do |scenario|
  #browser.cookies.clear
end


After do |scenario|
  if scenario.failed?
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    browser.driver.save_screenshot(screenshot)
    embed screenshot, 'image/png'
  end
end


at_exit do
  #browser.close
  #sendreport()
end


