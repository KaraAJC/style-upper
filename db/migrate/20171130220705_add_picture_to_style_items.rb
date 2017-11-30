class AddPictureToStyleItems < ActiveRecord::Migration[5.1]
  def change
    add_column :style_items, :picture, :string
  end
end
