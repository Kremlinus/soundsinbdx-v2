class CreateSocials < ActiveRecord::Migration[5.1]
  def change
    create_table :socials do |t|
      t.string :label
      t.string :link
      t.references :about_u, foreign_key: true
      t.references :artist, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
