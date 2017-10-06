class Store < ApplicationRecord
  has_many :products
  has_many :fashion_sets

  class << self
    def take_config_store
      Store.find_by(id: 0)
    end
  end
end
