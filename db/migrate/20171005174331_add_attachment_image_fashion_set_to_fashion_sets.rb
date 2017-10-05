class AddAttachmentImageFashionSetToFashionSets < ActiveRecord::Migration
  def self.up
    change_table :fashion_sets do |t|
      t.attachment :image_fashion_set
    end
  end

  def self.down
    remove_attachment :fashion_sets, :image_fashion_set
  end
end
