require 'spec_helper'

describe "StaticPages" do
  describe "home page" do
    it "should have the content 'My Trophy Collection'" do
      visit '/static_pages/home'
      expect(page).to have_content ('My Trophy Collection')
    end

    it "should have the base title 'Cliche818'" do
      visit '/static_pages/home'
      expect(page).to have_title('Cliche818')
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title 'Cliche818 | Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Cliche818 | Help')
    end
  end

  describe "About page" do
    it "should have the content 'About Me'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Me')
    end

    it "should have the right title 'Cliche818 | About'" do
      visit '/static_pages/about'
      expect(page).to have_title('Cliche818 | About')
    end
  end


end
