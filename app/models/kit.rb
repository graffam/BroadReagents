class Kit < ActiveRecord::Base
  has_many :mkcs
  has_many :machines, through: :mkcs
  has_many :listitems
  has_many :orders, through: :listitems
end
