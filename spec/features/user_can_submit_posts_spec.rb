require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end

  scenario "Can click a post link to view individual post" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Test"
    click_button "Submit"
    click_link "Test"
    expect(page).to have_content("Test")
  end

  scenario "The posts are ordered from newest to oldest" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Test old"
    click_button "Submit"
    click_link "New post"
    fill_in "Message", with: "Test new"
    click_button "Submit"

    expect("Test new").to appear_before("Test old")
  end
end
