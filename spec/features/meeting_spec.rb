require 'spec_helper'

feature 'Creating a meeting' do
  scenario 'User can create a meeting in a conference room' do
    ConferenceRoom.create!(name: 'Boulder East')
    ConferenceRoom.create!(name: 'Boulder West')

    visit new_meeting_path

    select 'Boulder West', from: 'reservation[conference_room_id]'
    fill_in 'meeting[name]', with: 'Some IPM'
    fill_in 'reservation[starts_at]', with: '2014-05-20'

    click_button 'Add meeting'

    expect(page).to have_content 'Some IPM'
  end
end