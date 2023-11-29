class Pin < ApplicationRecord
  acts_as_taggable_on :tags
  ActsAsTaggableOn::Tag.most_used(10)
  ActsAsTaggableOn::Tag.least_used(10)
  belongs_to :user
  has_one_attached :photo
  attr_accessor :use_current_location, :lat, :lon

  after_initialize :set_default, if: :new_record?

  validates :name, presence: true
  validates :address, presence: true
  validates :visited, inclusion: [true, false]
  validates :private, inclusion: [true, false]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  ICONS = {
    'utensils' => "#E63946",
    'ice-cream' => "#FDB9C8",
    'burger' => "#FFD700",
    'pizza-slice' => "#808000",
    'carrot' => "#FFA500",
    'mug-hot' => "#6B4423",
    'martini-glass' => "#4E2A84",
    'beer-mug-empty' => "#FFBF00",
    'bag-shopping' => "#00BFFF",
    'tree' => "#008000",
    'landmark' => "#808080",
    'book' => "#800000",
    'music' => "#800080",
    'gamepad' => "#00FF00",
    'dice' => "#DC143C"
  }

  def blank_stars
    5 - rating
  end


  private

  def set_default
    self.visited ||= false
    self.private ||= false
  end

end
