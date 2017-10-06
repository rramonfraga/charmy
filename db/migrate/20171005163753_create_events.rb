class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :user_id
      t.string :fake_user_id
      t.string :product_id
      t.references :store, index: true

      t.timestamps
    end
  end
end
