class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :title, :description, :image, presence: true
end
