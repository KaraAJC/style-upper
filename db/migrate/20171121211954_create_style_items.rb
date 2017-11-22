class CreateStyleItems < ActiveRecord::Migration[5.1]
  def change
    create_table :style_items do |t|
      t.belongs_to :store, null: false
      t.text :item_type, null: false
      t.text :description, null: false
      t.attachment :image



      t.timestamps
    end
  end
end
