class Experience < ApplicationRecord
  belongs_to :user
  
  has_many_attached :photos

  validates :title, presence: true
  validates :description, presence: true
  validates :unit_current_price, presence: true
end
