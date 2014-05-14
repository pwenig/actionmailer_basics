require 'spec_helper'

feature "Welcome page" do
  scenario "Shows a welcome message" do
    visit '/'

    expect(page).to have_content("Welcome!")
  end
end