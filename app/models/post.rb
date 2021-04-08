class Post < ApplicationRecord
  has_one_attached :image

  validates :title, :description, :image, presence: true
end
