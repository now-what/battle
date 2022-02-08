feature 'Testing infrastructure' do
  # scenario 'Can run app and check page content' do
  #   visit('/')
  #   expect(page).to have_content 'BATTLE!'
  # end
end

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'Enter player names' do
  scenario 'Players enter their names and see them printed' do
  visit('/')
  fill_in 'player_01_name', with: 'Francesco'
  fill_in 'player_02_name', with: 'Bromley'
  click_on 'Enter arena'
  expect(page).to have_content 'Francesco vs Bromley'
  end
end
