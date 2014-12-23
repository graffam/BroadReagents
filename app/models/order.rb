class Order < ActiveRecord::Base
  has_one :user
  has_many :listitems
  has_many :kits, through: :listitems
  accepts_nested_attributes_for :listitems
end
