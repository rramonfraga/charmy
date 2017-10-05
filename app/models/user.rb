class User < ApplicationRecord
  has_many :sizes
  has_many :styles

  def random_style
    styles.order("RANDOM()").first
  end
end
