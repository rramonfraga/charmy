class FakeUser < ApplicationRecord
  attr_accessor :gender, :color, :style_ids, :size_ids

  validates :gender, :color, :style_ids, :size_ids, presence: true

  def sizes
    Size.where(id: size_ids)
  end

  def styles
    Style.where(id: style_ids)
  end

  def random_style
    styles.sample
  end
end
