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

  scenario "A post can have an attached image" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "This is a post message"
    attach_file("post[image]", Rails.root + "spec/features/Test_images/test.png")
    click_button "Submit"
    expect(page).to have_selector('img[src="/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--c0f3e85e7e8d92afa5c7897c87039cbf1b817ef4/test.png"]')
    # expect(page).to find("img[src^='/rails/active_storage']")
  end
end
