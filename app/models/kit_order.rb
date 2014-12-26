class KitOrder < ActiveRecord::Base
  belongs_to :orders
  belongs_to :kits
end
