class Pin < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  after_initialize :set_default, if: :new_record?

  validates :name, presence: true
  validates :address, presence: true
  validates :visited, inclusion: [true, false]
  validates :private, inclusion: [true, false]

  private

  def set_default
    self.visited ||= false
    self.private ||= false
  end
end
