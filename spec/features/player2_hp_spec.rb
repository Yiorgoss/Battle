require 'capybara/rspec'
require 'capybara/dsl'

feature 'Viewing HP' do
  scenario 'See player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
  end
end
