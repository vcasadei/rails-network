require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it "should have the h1 'Welcome to RailsNetwork'" do
      page.should have_selector('h1', :text => 'Welcome to RailsNetwork')
    end

    it "should have the base title" do
      page.should have_selector('title',
                        :text => "RailsNetwork")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the h1 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title',
                        :text => "Help | RailsNetwork")
    end
  end

  describe "About page" do
    before { visit about_path }

    it "should have the h1 'About Us'" do
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title',
                    :text => "About Us | RailsNetwork")
    end
  end

end