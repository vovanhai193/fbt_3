class CategoryReview < ApplicationRecord
  include CustomOrder
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
end
