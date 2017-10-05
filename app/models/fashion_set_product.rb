class FashionSetProduct < ApplicationRecord
  belongs_to :fashion_set
  belongs_to :product
end
