class Friend < ApplicationRecord
  belongs_to :city
  has_many :bookings
  has_many :users, through: :bookings

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :birth_date, presence: true
end
