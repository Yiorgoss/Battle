require 'capybara/rspec'
require 'capybara/dsl'

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

feature 'Viewing HP' do
  scenario 'See player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
  end
end
