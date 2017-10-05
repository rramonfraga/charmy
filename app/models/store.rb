class Store < ApplicationRecord
  has_many :store_products
  has_many :products, through: :store_products

  class << self
    def take_config_store
      Store.new(id: 'STORE', name: 'my_store')
    end
  end
end
