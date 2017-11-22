class StyleItem < ApplicationRecord
  belongs_to :store
  validates :item_type, presence: true
  validates :description, presence: true

end
