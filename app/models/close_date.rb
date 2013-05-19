class CloseDate < ActiveRecord::Base
  belongs_to :sale
  has_many :close_date_histories
end
