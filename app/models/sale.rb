class Sale < ActiveRecord::Base
  belongs_to :project
  has_many :territory
  has_one :bid
  has_one :ask
  has_one :close
  has_one :close_date
end
