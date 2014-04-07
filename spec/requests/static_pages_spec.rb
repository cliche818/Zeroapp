require 'spec_helper'

describe "StaticPages" do
  describe "home page" do
    it "should have the content 'My Trophy Collection'" do
      visit root_path
      expect(page).to have_content ('My Trophy Collection')
    end

    it "should have the base title 'Cliche818'" do
      visit root_path
      expect(page).to have_title('Cliche818')
    end

    it "should not have a custom page title" do
      visit root_path

      expect(page).not_to have_title('Cliche818| Home')
    end
  end

  describe "help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the right title 'Cliche818 | Help'" do
      visit help_path
      expect(page).to have_title('Cliche818 | Help')
    end
  end

  describe "About page" do
    it "should have the content 'About Me'" do
      visit about_path
      expect(page).to have_content('About Me')
    end

    it "should have the right title 'Cliche818 | About'" do
      visit about_path
      expect(page).to have_title('Cliche818 | About')
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Me'" do
      visit contact_path
      expect(page).to have_content('Contact Me')
    end

    it "should have the right title 'Cliche818 | Contact Me'" do
      visit contact_path
      expect(page).to have_title('Cliche818 | Contact Me')
    end
  end
end
