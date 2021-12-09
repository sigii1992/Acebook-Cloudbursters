require 'rails_helper'

RSpec.feature "Login", type: :feature do
    scenario "A registered user can login to their accounts" do
      # Set up test database to contain user: example@example.com 
      visit "/log-in"
      fill_in "Email", with: "example@example.com"
      fill_in "Password", with: "password"
      click_button "Login"
      expect(page).to have_content("New post") # redirects to /posts page
    end

    scenario "An unregistered user will be redirected to hte signup page" do
      visit "/log-in"
      fill_in "Email", with: "example@example.com"
      fill_in "Password", with: "password"
      click_button "Login"
      expect(page).to have_content("Signup") # redirects to /signup page
    end
end