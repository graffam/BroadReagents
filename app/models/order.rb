class Order < ActiveRecord::Base
  has_one :user
  has_many :itemlists
  has_many :kits, through: :itemlists
end
