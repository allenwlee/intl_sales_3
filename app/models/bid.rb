class Bid < ActiveRecord::Base
  belongs_to :sale
  has_many :bid_histories
end
