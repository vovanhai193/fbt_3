class BookTour < ApplicationRecord
  belongs_to :user
  belongs_to :tour

  validates :people_number, presence: true
end
