class FashionSet < ApplicationRecord
  has_attached_file :image_fashion_set
  validates_attachment_content_type :image_fashion_set, content_type: /\Aimage\/.*\Z/

  has_many :fashion_set_products
  has_many :products, through: :fashion_set_products
end
