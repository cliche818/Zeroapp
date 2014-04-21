FactoryGirl.define do
  factory :user do
    name                  "ABC"
    email                 "def@email.com"
    password              "123456"
    password_confirmation "123456"
  end
end