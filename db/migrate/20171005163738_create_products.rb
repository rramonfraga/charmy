class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.string :category
      t.integer :price
      t.string :color
      t.string :position
      t.string :gender
      t.string :material
      t.string :size_id
      t.references :store, index: true
      t.text :style_ids, array: true, default: []

      t.timestamps
    end
  end
end
