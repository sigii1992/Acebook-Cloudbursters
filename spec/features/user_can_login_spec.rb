require 'rails_helper'

RSpec.feature "Login", type: :feature do
    scenario "A registered user can login to their accounts" do
      visit "/log-in"
      fill_in "Email", with: "example@example.com"
      fill_in "Password", with: "password"
      click_button "Login"
      expect(page).to have_content("New post") # redirects to /posts page
    end
end