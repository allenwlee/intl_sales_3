class User < ActiveRecord::Base
  has_many :projects
  before_create :hash_password

  include BCrypt

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    return nil unless user
    db_password = Password.new(user.password)
    db_password == password ? user : nil
  end

  private

  def hash_password
    self.password = Password.create(self.password)
  end
end