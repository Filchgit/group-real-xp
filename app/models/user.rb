class User < ApplicationRecord
  has_many :bookings
  has_many :experiences

  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

end
