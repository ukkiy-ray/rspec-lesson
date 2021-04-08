class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :image

  validates :title, :description, :image, presence: true
end
