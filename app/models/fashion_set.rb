class FashionSet < ApplicationRecord
  has_attached_file :image_fashion_set
  validates_attachment_content_type :image_fashion_set, content_type: /\Aimage\/.*\Z/

  has_many :fashion_set_products
  has_many :products, through: :fashion_set_products

  class << self
    def search_for_user(user, store_id)
      where({
        store_id: store_id,
        gender: user.gender,
        sizes: user.sizes,
        color: user.color,
        style: user.random_style
      }).limit(4)
    end
  end
end
