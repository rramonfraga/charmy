class CreateFashionSetProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :fashion_set_products do |t|
      t.references :fashion_set, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
