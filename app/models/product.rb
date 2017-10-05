class Product < ApplicationRecord
  has_attached_file :image_product
  validates_attachment_content_type :image_product, content_type: /\Aimage\/.*\Z/

  belongs_to :store
  has_many :fashion_set_products
  has_many :fashion_sets, through: :fashion_set_products
end
