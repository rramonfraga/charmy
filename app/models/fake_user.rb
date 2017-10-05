class FakeUser
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :gender, :color, :style_ids, :size_ids

  validates :gender, :color, :style_ids, :size_ids, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def sizes
    Size.where(id: size_ids)
  end

  def styles
    Style.where(id: style_ids)
  end

  def persisted?
    false
  end
end
