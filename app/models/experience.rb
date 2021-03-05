class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings #, dependent: :destroy
  
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true } 
    }

  validates :title, presence: true
  validates :description, presence: true
  validates :unit_current_price, presence: true
end
