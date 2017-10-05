class Artist < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :socials
end
