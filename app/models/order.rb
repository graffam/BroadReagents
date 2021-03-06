class Order < ActiveRecord::Base
  has_one :user
  has_many :kit_orders
  has_many :kits, through: :kit_orders
  accepts_nested_attributes_for :kit_orders
end
