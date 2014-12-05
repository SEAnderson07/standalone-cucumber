require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host   = 'http://www.google.com'
end

Capybara.register_driver :selenium do |app|
  Selenium::WebDriver::Firefox::Binary.path = "/opt/firefox/firefox-bin"
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end


World(Capybara)

