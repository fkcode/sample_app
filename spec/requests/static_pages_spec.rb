require 'spec_helper'

describe PagesController do

  let(:base_title) {"Ruby Sample App"}

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector("h1", :text => "Sample App") }

    it { should have_selector("title", :text => "#{base_title}") }

    it { should_not have_selector("title", :text => "| Home") }
  end

  describe "Contact page" do
    it "should have some content" do
      visit contact_path
      page.should have_selector('h1', :text => "Contact")
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector("title", :text => "#{base_title} | Contact")
    end

  end

  describe "About page" do
    it "should have some content" do
      visit about_path
      page.should have_selector('h1', :text => "About")
    end

    it "should have the title 'About'" do
      visit about_path
      page.should have_selector("title", :text => "#{base_title} | About")
    end

  end

  describe "Help page" do
    it "should have some content" do
      visit help_path
      page.should have_selector('h1', :text => "Help")
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector("title", :text => "#{base_title} | Help")
    end

  end

end