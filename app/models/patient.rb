class Patient < ApplicationRecord
  has_many :selections
  has_many :treatments, :through => :selections
end
