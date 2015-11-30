require 'feature_helper'

feature 'Simple test' do

  scenario 'simple test' do
    visit '/'
    puts Capybara.current_driver.to_s
    expect(page).to have_css('.sing-up')
  end

  scenario 'simple test2' do
    visit '/'
    expect(page).to have_css('.sing-in')
    page.find('.sign-in').click
  end

end