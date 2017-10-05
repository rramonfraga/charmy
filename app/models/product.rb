class Product < ApplicationRecord
  has_many :fashion_set_products
  has_many :fashion_sets, through: :fashion_set_products

  has_many :store_products
  has_many :stores, through: :store_products

  has_many :sizes
  attribute :styles, :string, array: true
  attribute :tags, :string, array: true
end
