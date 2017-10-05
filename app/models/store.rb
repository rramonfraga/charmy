class Store < ApplicationRecord
  has_many :products

  class << self
    def take_config_store
      Store.find_by(id: 0)
    end
  end
end
