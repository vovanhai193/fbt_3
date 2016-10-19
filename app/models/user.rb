class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :rememberable, :validatable

  has_many :book_tours
  has_many :likes, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
