class FashionSet < ApplicationRecord
  has_attached_file :image_fashion_set
  validates_attachment_content_type :image_fashion_set, content_type: /\Aimage\/.*\Z/

  belongs_to :style
  belongs_to :store
  has_many :fashion_set_products
  has_many :products, through: :fashion_set_products

  class << self
    def search_for_user(user, store)
      where({
        store: store,
        gender: user.gender,
        style: user.random_style
      }).select { |f| f.colors.include?(user.color) }[0..4]
    end
  end
end
