class Close < ActiveRecord::Base
  belongs_to :sale
  has_many :close_histories
end
