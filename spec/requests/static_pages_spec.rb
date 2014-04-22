require 'spec_helper'

describe "StaticPages" do
  describe "home page" do
    before do
      visit root_path
    end

    it "should have the content 'My Trophy Collection'" do
      expect(page).to have_content ('My Trophy Collection')
    end

    it "should have the base title 'Cliche818'" do
      expect(page).to have_title('Cliche818')
    end

    it "should not have a custom page title" do
      expect(page).not_to have_title('Cliche818| Home')
    end

    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "micropost 1")
        FactoryGirl.create(:micropost, user: user, content: "micropost 2")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page). to have_selector("li##{item.id}", text: item.content)
        end
      end
    end
  end

  describe "help page" do
    before do
      visit help_path
    end

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the right title 'Cliche818 | Help'" do
      expect(page).to have_title('Cliche818 | Help')
    end
  end

  describe "About page" do
    before do
      visit about_path
    end

    it "should have the content 'About Me'" do
      expect(page).to have_content('About Me')
    end

    it "should have the right title 'Cliche818 | About'" do
      expect(page).to have_title('Cliche818 | About')
    end
  end

  describe "Contact page" do
    before do
      visit contact_path
    end

    it "should have the content 'Contact Me'" do
      expect(page).to have_content('Contact Me')
    end

    it "should have the right title 'Cliche818 | Contact Me'" do
      expect(page).to have_title('Cliche818 | Contact Me')
    end
  end
end
