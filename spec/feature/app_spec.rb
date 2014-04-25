require 'spec_helper'

feature 'homepage' do

  scenario 'user sees the word welcome on the homepage' do
    visit '/'
    expect(page).to have_content "Welcome"
  end

  scenario 'user can add a restaurant and see the list of restaurants' do
    visit '/'
    click_on "Restaurants"
    click_on "Add a Restaurant"
    fill_in "name", with: "Shine"
    fill_in "link", with: "http://www.shineboulder.com/"
    click_on "Add"
    expect(page).to have_content "All Restaurants:"
    expect(page).to have_content "Shine"
  end

end