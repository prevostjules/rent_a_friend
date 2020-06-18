class Friend < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :birth_date, presence: true

  include AlgoliaSearch

  algoliasearch do
    attributes :address
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
