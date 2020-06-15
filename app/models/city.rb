class City < ApplicationRecord

  has_many :friends

  validates :name, presence: true

end
