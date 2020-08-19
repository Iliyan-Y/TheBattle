feature 'Entering player names' do
    scenario 'players can enter names and see names on screen' do
      fill_n_submit
      expect(page).to have_content 'Banana vs Kiwi'
    end
  end