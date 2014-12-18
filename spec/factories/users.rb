FactoryGirl.define do
  factory :user do
    first_name "Alex"
    last_name "Graff"
    sequence(:email) {|n| "#{n}graffam87@gmail.com"}
    password "password"
  end
end
