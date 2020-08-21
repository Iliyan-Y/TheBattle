feature 'View player 2 hit points' do
  scenario 'display the player 2 hitpoints' do
    fill_n_submit
    expect(page).to have_content "Kiwi HP:#{Player::DEFAULT_HP}"
  end
end
