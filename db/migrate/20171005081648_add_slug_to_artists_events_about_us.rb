class AddSlugToArtistsEventsAboutUs < ActiveRecord::Migration[5.1]
  def change
    add_column :about_us, :slug, :string
    add_column :artists, :slug, :string
    add_column :events, :slug, :string
  end
end
