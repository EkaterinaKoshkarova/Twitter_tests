require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/rspec'

Capybara.default_driver = :selenium
Capybara.default_wait_time = 20

RSpec.configure do |config|

  config.before(:each) do
    Capybara.current_session.driver.browser.manage.window.maximize
  end

end
