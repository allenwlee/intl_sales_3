class Sale < ActiveRecord::Base
  belongs_to :project
  has_many :territories
  has_many :media
  has_one :bid_histories
  has_one :ask_histories
  has_one :close_histories
  has_one :close_date_histories
end
