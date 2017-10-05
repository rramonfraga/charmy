class CreateFashionSets < ActiveRecord::Migration[5.1]
  def change
    create_table :fashion_sets do |t|
      t.string :name
      t.string :style_id
      t.datetime :date

      t.timestamps
    end
  end
end
