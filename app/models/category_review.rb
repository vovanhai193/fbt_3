class CategoryReview < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :type, presence: true
end
