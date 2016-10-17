class CategoryTour < ApplicationRecord
  has_many :tours, dependent: :destroy

  validates :type, presence: true
end
