class Tour < ApplicationRecord
  ratyrate_rateable "rating"
  belongs_to :category_tour

  has_many :book_tours
  has_many :ratings, dependent: :destroy
  has_many :images_tours, dependent: :destroy

  scope :recent, ->{order created_at: :desc}

  validates :name, presence: true, length: {maximum: 100}
  validates :schedule, presence: true
  validates :place_departure, presence: true
  validates :time, presence: true
  validates :people_number, presence: true
  validates :transport, presence: true
  validates :price, presence: true
  validates :content, presence: true
  validates :time_start, presence: true
end
