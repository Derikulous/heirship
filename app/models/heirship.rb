class Heirship < ActiveRecord::Base
  belongs_to :person
  belongs_to :liability

  accepts_nested_attributes_for :liability
end
