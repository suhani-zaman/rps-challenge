feature 'Allows player to select' do
  scenario 'Player selects Rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "selected Rock!"
  end
end
feature 'Allows player to select' do
  scenario 'Player selects Paper' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "selected Paper!"
  end
end
 
feature 'Allows player to select' do
  scenario 'Player selects Scissors' do
  sign_in_and_play
  click_button "Scissors"
  expect(page).to have_content "selected Scissors!"
  end
end