class Project < ActiveRecord::Base
  belongs_to :user
  has_many :sales
  has_and_belongs_to_many :genres
end
