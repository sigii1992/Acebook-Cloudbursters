require 'rails_helper'

RSpec.feature "New posts first", type: :feature do
  scenario "Can view newer posts at the top" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end
end