require 'spec_helper'

describe PagesController do

  let(:base_title) {"Ruby Sample App"}

  describe "Home page" do
    it "should have h1 Sample App" do
      visit '/pages/home'
      page.should have_selector("h1", :text => "Sample App")
    end

    it "should have the title 'Home'" do
      visit '/pages/home'
      page.should have_selector("title", :text => "#{base_title}")
    end

    it "should not have custom page title" do
      visit root_path
      page.should_not have_selector("title", :text => "| Home")
    end

  end

  describe "Contact page" do
    it "should have some content" do
      visit '/pages/contact'
      page.should have_selector('h1', :text => "Contact")
    end

    it "should have the title 'Contact'" do
      visit '/pages/contact'
      page.should have_selector("title", :text => "#{base_title} | Contact")
    end

  end

  describe "About page" do
    it "should have some content" do
      visit '/pages/about'
      page.should have_selector('h1', :text => "About")
    end

    it "should have the title 'About'" do
      visit '/pages/about'
      page.should have_selector("title", :text => "#{base_title} | About")
    end

  end

end