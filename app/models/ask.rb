class Ask < ActiveRecord::Base
  belongs_to :sale
  has_many :ask_histories
end
