class Event < ApplicationRecord
  belongs_to :store

  validates :name, presence: true
end
