feature 'Entering player names' do
    scenario 'players can enter names and see names on screen' do
      visit('/')
      fill_in('player1' , with: 'Zish')
      fill_in('player2' , with: 'Iliyan')
      click_button 'Submit'
      expect(page).to have_content 'Zish Iliyan'
    end
  end