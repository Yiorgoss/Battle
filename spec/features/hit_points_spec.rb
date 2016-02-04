
feature "hit points" do
  scenario "See player 2s hit points" do
    sign_in_and_play
    expect(page).to have_text("10")
  end
  # scenario 'see player 1s hit points after round of attacks' do
  #   sign_in_and_play
  #   attack_and_return
  #   attack_and_return
  #   expect(page).to have_text('Jessie')
  # end
end
