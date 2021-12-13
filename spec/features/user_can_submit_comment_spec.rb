require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can comment on a post and view the comment" do
    visit "/sign_ups"
    fill_in "user[email]", with: "feature@test.com"
    fill_in "user[password]", with: "password"
    fill_in "user[password_confirmation]", with: "password"
    click_button "Sign-up"
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    click_link "Hello, world!"
    fill_in "comment[body]", with: "This is a comment"
    click_button "Create Comment"
    expect(page).to have_content("This is a comment")
  end
end