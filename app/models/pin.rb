class Pin < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  after_initialize :set_default, if: :new_record?

  validates :name, presence: true
  validates :address, presence: true
  validates :visited, inclusion: [true, false]
  validates :private, inclusion: [true, false]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  private

  def set_default
    self.visited ||= false
    self.private ||= false
  end

end
