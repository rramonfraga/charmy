class Event < ApplicationRecord
  belongs_to :store
  belongs_to :product
  belongs_to :user
end
