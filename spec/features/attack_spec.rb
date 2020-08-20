feature "display confirmaion page for attack" do 
  scenario "Player 1 attack player2" do
    fill_n_submit
    click_button "Attack" 
    expect(page).to have_content "Banana attacked Kiwi"
  end

  scenario "Player 2 attack player 1" do 
    fill_n_submit
    click_button "Attack"
    click_link "Ok"
    click_button "Attack"
    expect(page).to have_content "Kiwi attacked Banana"  
  end

end