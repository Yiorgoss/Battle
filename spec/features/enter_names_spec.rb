require 'capybara/rspec'
require 'capybara/dsl'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave: 100HP vs. Mittens: 100HP'
  end
end
