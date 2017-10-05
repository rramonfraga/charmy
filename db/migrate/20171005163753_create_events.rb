class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.references :store, index: true
      t.references :user, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
