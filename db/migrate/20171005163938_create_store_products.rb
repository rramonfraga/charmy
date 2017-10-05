class CreateStoreProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :store_products do |t|
      t.references :product, index: true
      t.references :store, index: true
      t.boolean :enable, default: true

      t.timestamps
    end
  end
end
