class AddAttachmentAvatarToCryoProducts < ActiveRecord::Migration
  def self.up
    change_table :cryo_products do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :cryo_products, :avatar
  end
end
