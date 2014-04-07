require 'spec_helper'

describe 'Users pages' do

  it "should have the content 'New user'"  do
    visit signup_path
    expect(page).to have_content ('New user')
  end

  it "should have the title 'Cliche818 | Sign up'" do
    visit signup_path
    expect(page).to have_title('Cliche818 | Sign up')
  end
end