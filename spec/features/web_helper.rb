def fill_n_submit 
  visit('/')
  fill_in('player1', with: "Banana")
  fill_in("player2", with: "Kiwi")
  click_button "Submit"
end

def attack_n_ok
  click_button 'Attack'
  click_link 'Ok'
end