class Photo < ApplicationRecord
  has_attached_file :image
  validates_presence_of :image
  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"]}
end
