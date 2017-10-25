class Social < ApplicationRecord
  belongs_to :about_u
  belongs_to :artist
  belongs_to :event

  def label_enum
    [
      ['facebook'],
      ['instagram'],
      ['soundcloud'],
      ['youtube'],
      ['twitter'],
      ['github'],
      ['linkedin'],
      ['tickets']
    ]
  end
  def name
    label
  end
end
