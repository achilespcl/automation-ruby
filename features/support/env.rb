require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'site_prism'
require_relative 'page_helper.rb'

World(Pages)

ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) +
"/data/#{ENVIRONMENT_TYPE}.yml")

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = CONFIG['url_home']
end