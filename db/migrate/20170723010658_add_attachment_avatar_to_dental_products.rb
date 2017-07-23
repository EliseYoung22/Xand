class AddAttachmentAvatarToDentalProducts < ActiveRecord::Migration
  def self.up
    change_table :dental_products do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :dental_products, :avatar
  end
end
