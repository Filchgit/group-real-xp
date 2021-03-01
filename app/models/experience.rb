class Experience < ApplicationRecord
  belongs_to :users

  validates :title, presence: true
  validates :description, presence: true
  validates :unit_current_price, presence: true
  
end
