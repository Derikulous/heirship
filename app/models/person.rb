class Person < ActiveRecord::Base
  has_many :heirships
  has_many :liabilities, through: :heirships
end
