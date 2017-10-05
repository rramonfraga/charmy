class Style < ApplicationRecord
  has_attached_file :image_style
  validates_attachment_content_type :image_style, content_type: /\Aimage\/.*\Z/
end
