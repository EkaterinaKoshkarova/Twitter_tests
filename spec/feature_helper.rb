require 'rails_helper'
require 'spec_helper'
require 'pry'

Capybara.register_driver :ie do |app|
  Capybara::Selenium::Driver.new(app, :browser => :ie)
end
Capybara.default_driver = :ie