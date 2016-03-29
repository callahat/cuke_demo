require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'pry'
require 'cucumber_statistics'

Capybara.javascript_driver = :poltergeist
Capybara.current_driver = :poltergeist
Capybara.run_server = false
Capybara.app_host = 'http://www.google.com'