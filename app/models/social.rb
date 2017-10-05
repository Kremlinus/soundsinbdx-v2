class Social < ApplicationRecord
  belongs_to :about_u
  belongs_to :artist
  belongs_to :event
end
