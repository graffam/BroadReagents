class Machine < ActiveRecord::Base
  has_many :mkcs
  has_many :kits, through: :mkcs

end
