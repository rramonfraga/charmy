class CreateFashionSets < ActiveRecord::Migration[5.1]
  def change
    create_table :fashion_sets do |t|
      t.string :name
      t.string :gender
      t.string :colors, array: true, default: []
      t.references :store, index: true
      t.references :style, index: true
      t.datetime :date

      t.timestamps
    end
  end
end
