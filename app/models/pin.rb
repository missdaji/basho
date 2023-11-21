class Pin < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :comments, presence: true
  validates :rating, presence: true
  validates :visited, presence: true
  validates :private, presence: true, default: false
end
