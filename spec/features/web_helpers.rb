def sign_in_and_play
    visit('/')
    fill_in :player_01_name, with: 'Francesco'
    fill_in :player_02_name, with: 'Sarah'
    click_button 'Enter arena'
end