require "test_helper"
require "capybara/rails"
require "selenium/webdriver"

Capybara.register_driver :selenium_chrome do |app|
  options = ::Selenium::WebDriver::Chrome::Options.new
  options.add_argument("--window-size=1400,1400")
  # Add other options if needed, e.g. headless mode
  # options.add_argument('--headless')

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include Devise::Test::IntegrationHelpers
  driven_by :selenium_chrome
end
