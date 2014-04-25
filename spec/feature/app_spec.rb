require 'spec_helper'

feature 'homepage' do
  scenario 'user sees the word welcome on the homepage' do
    visit '/'
    expect(page).to have_content "Welcome"
  end
end