class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.text :store_name, null: false
      t.text :address, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
