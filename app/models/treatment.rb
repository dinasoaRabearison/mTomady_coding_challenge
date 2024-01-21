class Treatment < ApplicationRecord
  has_many :selections
  has_many :patients, :through => :selections
  belongs_to :category
  has_many :translations
end
