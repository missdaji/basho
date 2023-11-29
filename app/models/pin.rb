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

end
