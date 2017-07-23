class CryoProduct < ApplicationRecord
  has_attached_file :avatar, styles: { large:"600x600>", medium: "300x300>", thumb: "100x100>" },  :default_url => "/infinity.png", :storage => :cloudinary, :path => ":id/:style/:filename"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
