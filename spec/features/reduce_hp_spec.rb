feature 'Reduce player 2 hp' do
  scenario 'player 1 attack player 2 and reduces his HP by 10' do
    fill_n_submit
    attack_n_ok
    expect(page).not_to have_content "Kiwi HP: #{Player::DEFAULT_HP}"
    expect(page).to have_content "Kiwi HP:#{Player::DEFAULT_HP - Player::DEFAULT_DMG}"
  end

  scenario 'Player loose a game ' do
    fill_n_submit
    19.times { attack_n_ok }
    expect(page).to have_content 'Kiwi is looser'
  end
end
