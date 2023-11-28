class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :pins
  has_many :tags, -> { distinct }, through: :pins
  has_one_attached :avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def tag_pins
    pins.map do |pin|
      pin.tag_list
    end.flatten.uniq
  end
end
