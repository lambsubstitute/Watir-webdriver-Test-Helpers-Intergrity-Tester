#coding: utf-8
require 'watir-webdriver'
require 'rubygems'
require 'rspec/expectations'
require 'watir-webdriver-performance'

include Test::Unit::Assertions


Before do


end


Before do |scenario|
  #browser.cookies.clear
  profile = Selenium::WebDriver::Firefox::Profile.new
  browser = Watir::Browser.new :firefox, :profile => profile
  @browser = browser
end


After do |scenario|
  if scenario.failed?
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    browser.driver.save_screenshot(screenshot)
    embed screenshot, 'image/png'
  end
  @browser.close
end


at_exit do
  browser.close
  #sendreport()
end


