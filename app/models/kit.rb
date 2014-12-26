class Kit < ActiveRecord::Base
  has_many :machine_kit_compatabilities
  has_many :machines, through: :machine_kit_compatabilities
  has_many :listitems
  has_many :orders, through: :listitems
end
