class User < ApplicationRecord
  has_many :sizes
  has_many :styles
end
