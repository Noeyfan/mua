require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit '/static_pages/home'
      expect(page).to have_content('Sample Project')
     # get static_pages_index_path
     # response.status.should be(200)
    end
  end

describe "Help page" do
	it "should have the content 'Help'" do
  visit '/static_pages/help'
  expect(page).to have_content('Help')
    end
  end
end
