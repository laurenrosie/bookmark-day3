require 'spec_helper'

feature "Seeing tag-specific links" do

  before(:each) do
    visit '/links/new'
    fill_in :title, with: 'Google'
    fill_in :url, with: 'http://www.google.com'
    fill_in :tag, with: 'Search Engine'
    click_button 'Add'
    visit '/links/new'
    fill_in :title, with: 'Bubbles Site'
    fill_in :url, with: 'http://www.google-bubbles.com'
    fill_in :tag, with: 'bubbles'
    click_button 'Add'
  end

  scenario 'on tag-specific pages' do
    visit '/tags/bubbles'
    within 'ul#links' do
      expect(page).not_to have_content('Google')
      expect(page).to have_content('Bubbles Site')
    end
  end
end
