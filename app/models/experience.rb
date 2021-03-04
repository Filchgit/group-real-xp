class Experience < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :title, presence: true
  validates :description, presence: true
  validates :unit_current_price, presence: true
end
