class Liability < ActiveRecord::Base
  has_many :heirships
  has_many :people, through: :heirships

  accepts_nested_attributes_for :heirships
  accepts_nested_attributes_for :people
end
