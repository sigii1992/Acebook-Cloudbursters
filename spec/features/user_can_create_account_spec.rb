require 'rails_helper'

RSpec.feature "Sign_up", type: :feature do
  scenario "Can submit sign in and be signed in" do
    visit "/"
    click_link "Sign up"
    fill_in "user[email]", with: "feature@test.com"
    fill_in "user[password]", with: "password"
    fill_in "user[password_confirmation]", with: "password"
    click_button "Sign-up"

    expect(page).to have_content("Logged in as: feature@test.com")
  end
end