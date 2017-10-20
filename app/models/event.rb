class Event < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :socials
  belongs_to :location
  belongs_to :music_type
end
