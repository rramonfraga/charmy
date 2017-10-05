class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :gender
      t.string :color
      t.string :styles
      t.string :size_ids

      t.timestamps
    end
  end
end
