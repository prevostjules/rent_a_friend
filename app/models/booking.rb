class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :friend

  validates :starting_date, presence: true
  validates :ending_date, presence: true
end
