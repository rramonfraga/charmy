class FakeUser < ActiveRecord::Migration[5.1]
  def change
    create_table :fake_users do |t|
      t.string :gender
      t.string :color
      t.text :style_ids, array: true, default: []
      t.text :size_ids, array: true, default: []

      t.timestamps
    end
  end
end
