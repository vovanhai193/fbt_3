class CategoryTour < ApplicationRecord
  has_many :tours, dependent: :destroy

  validates :title, presence: true
end
