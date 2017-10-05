class FashionSet < ApplicationRecord
  has_many :fashion_set_products
  has_many :products, through: :fashion_set_products
end
