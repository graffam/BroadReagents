class Machine < ActiveRecord::Base
  has_many :machine_kit_compatabilities
  has_many :kits, through: :machine_kit_compatabilities

end
