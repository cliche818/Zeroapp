require 'spec_helper'

describe "StaticPages" do
  it "should have the content 'Sample App'" do
    visit '/static_pages/home'
    expect(page).to have_content ('My Trophy Collection')
  end
end
