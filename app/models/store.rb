class Store < ApplicationRecord
  has_many :style_items
  validates :store_name, presence: true
  validates :description, presence: true

  # geocoded_by :address
  # after_validation :geocode
end
