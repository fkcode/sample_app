require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      visit '/pages/home'
      expect(page).to have_content("Home")
    end

    it "should have the right title" do
      visit '/pages/home'
      page.should have_selector("title", :text => "Ruby Sample App | Home")
    end

  end

  describe "GET 'contact'" do
    it "returns http success" do
      visit '/pages/contact'
      expect(page).to have_content("Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      visit '/pages/about'
      expect(page).to have_content("About")
    end
  end

end