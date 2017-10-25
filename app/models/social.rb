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
    if !event.nil?
      event.name + ' - ' + label
    elsif !about_u.nil?
      about_u.name + ' - ' + label
    elsif !artist.nil?
      artist.name + ' - ' + label
    else
      label
    end
  end

end
