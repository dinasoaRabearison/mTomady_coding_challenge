class Translation < ApplicationRecord
  belongs_to :treatment
  validates :translationValue , presence: true
end
