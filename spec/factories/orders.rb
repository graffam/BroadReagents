FactoryGirl.define do
  factory :order do
    user_id 1
    comment 'This is a test'

    association :kit_order, factory: :kit_order
  end

  factory :kit_order do
    kit_id 1
    amount 10
    order_id 1
  end
end
