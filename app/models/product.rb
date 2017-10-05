class Product < ApplicationRecord
  has_many :fashion_set_products
  has_many :fashion_sets, through: :fashion_set_products

  has_many :store_products
  has_many :stores, through: :store_products

  has_one :size
  has_many :styles

  class << self
    def search_by(user, store_id, collection_id)
      where({
        store: store_id,
        collection_id: collection_id,
        gender: user.gender,
        sizes: user.size_ids,
        color: user.color,
        style: user.styles
      })
    end
  end
end
