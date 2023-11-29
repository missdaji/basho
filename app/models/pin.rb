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
  after_validation :geocode, if: :will_save_change_to_address? && :if_not_geocoded?
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
    'dice' => "#DC143C",
    'bowl-food' => "#A67B5B",
    'bacon' => "#D2691E",
    'fish' => "#3FA9F5",
    'prescription-bottle-medical' => "#0CBABA",
    'cart-shopping' => "#FF1C00"
  }
  def blank_stars
    if rating.nil?
      5
    else
      5 - rating
    end
  end


  private

  def set_default
    self.visited ||= false
    self.private ||= false
  end

  def if_not_geocoded?
    self.longitude.nil? && self.latitude.nil?
  end

end
