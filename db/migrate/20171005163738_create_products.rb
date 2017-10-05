class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.string :type
      t.integer :price
      t.string :color
      t.string :position
      t.string :gender
      t.string :material

      t.timestamps
    end
  end
end
