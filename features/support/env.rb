require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/wait'

World(RSpec::Wait)

Capybara.default_driver = :selenium
