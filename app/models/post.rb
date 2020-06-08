class Post < ApplicationRecord
  validates :images, presence: true
  has_many :images
  has_many :likes
  belongs_to :user
  # belongs_to :group
  accepts_nested_attributes_for :images, allow_destroy: true
end
