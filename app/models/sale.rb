class Sale < ActiveRecord::Base
  belongs_to :project
  has_many :territory_histories
  has_one :bid_histories
  has_one :ask_histories
  has_one :close_histories
  has_one :close_date_histories
end
