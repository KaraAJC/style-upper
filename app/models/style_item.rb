class StyleItem < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :store

  validates :item_type, presence: true
  validates :description, presence: true

  

end
