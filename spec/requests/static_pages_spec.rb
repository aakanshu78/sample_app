require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end

  describe "Help page" do
    it "should have the content'Help'" do
      visit '/static_pages/help'
      expect(pages).to have_content('Help')
    end
  end

  describe "Contact Page" do

    it "should have the content 'Contact' " do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end
end
