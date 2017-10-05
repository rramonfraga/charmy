class User < ApplicationRecord
  has_many :sizes
  attribute :styles, :string, array: true
end
