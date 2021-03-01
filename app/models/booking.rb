class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :experience

  validates :booked_start_date, presence: true
  validates :booked_end_date, presence: true

end
