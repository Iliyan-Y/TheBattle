feature "Switching turns" do 
  scenario "Player 2 take turn" do 
    fill_n_submit
    click_button "Attack" 
    click_link "Ok"
    expect(page).to have_content "Kiwi Turn:"
  end
end