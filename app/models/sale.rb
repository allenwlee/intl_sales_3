class Sale < ActiveRecord::Base
  belongs_to :project
  has_one :territory
  has_one :bid
  has_one :ask
  has_one :close
  has_one :close_date
end
