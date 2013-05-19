class Territory < ActiveRecord::Base
  belongs_to :sale
  has_many :territory_histories
end
