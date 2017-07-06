class User < ActiveRecord::Base
  # 5.1 it requires the presence of all fours fields
  validates :first_name, :last_name, :email_address, :age, presence: true
  # 5.2 it requires the age to be numeric.
  # 5.4 it requires the age to be at least 10 and below 150
  validates :age, numericality: { greater_than_or_equal_to: 10, less_than: 150 }
  #5.3 it requires the first_name and the last_name to be at least 2 characters each.
  validates :first_name, :last_name, length: { minimum: 2 }
end
