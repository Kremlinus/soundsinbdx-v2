class AboutU < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :socials
end
