class ImagesTour < ApplicationRecord
  belongs_to :tour

  has_attached_file :image, styles: {small: "64x64", med: "100x100", large: "200x200"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
