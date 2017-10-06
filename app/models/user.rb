class User < ApplicationRecord
  has_many :sizes
  has_many :styles

  def random_style
    styles.order("RANDOM()").first
  end

  def self.find_or_create(user_attributes)
    return if User.find_by(id: user_attributes[:id]).present?
    FakeUser.create(user_attributes)
  end
end
