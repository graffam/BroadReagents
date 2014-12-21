class Kit < ActiveRecord::Base
  has_many :mkcs
  has_many :machines, through: :mkcs
  has_many :itemlists
  has_many :orders, through: :itemlists
end
