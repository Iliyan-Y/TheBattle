feature "Reduce player 2 hp" do
  scenario "player 1 attack player 2 and reduces his HP by 10" do
    fill_n_submit
    click_button "Attack" 
    click_link "Ok"
    expect(page).not_to have_content "Kiwi HP: 100"
    expect(page).to have_content "Kiwi HP:90" 
  end
end