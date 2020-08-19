feature "display confirmaion page for attack" do 
  scenario "Player 1 attack player2" do
    fill_n_submit
    click_button "Attack" 
    expect(page).to have_content "Banana attacked Kiwi"
  end
end