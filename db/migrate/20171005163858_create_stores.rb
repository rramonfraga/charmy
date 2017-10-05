class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :post_code
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
