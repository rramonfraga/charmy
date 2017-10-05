class CreateFashionSets < ActiveRecord::Migration[5.1]
  def change
    create_table :fashion_sets do |t|
      t.string :name
      t.datetime :date
      t.references :style, index: true

      t.timestamps
    end
  end
end
