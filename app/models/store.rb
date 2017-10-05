class Store < ApplicationRecord
  has_many :products

  class << self
    def take_config_store
      Store.new(id: 'STORE', name: 'my_store')
    end
  end
end
