require "capybara/rspec"
require_relative "../../app/app"

Capybara.app = BookmarkManager

feature 'Viewing bookmark' do 
  scenario 'visiting the homepage' do 
    visit('/')
    expect(page).to have_content("Welcome to Bookmark Manager")
  end 

end 