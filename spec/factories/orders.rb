FactoryGirl.define do
  factory :order do
    user_id 1
    comment 'This is a test'
  end

  factory :kit_order do
    kit_id 1
    amount 10
    order
  end
end
