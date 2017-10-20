class CreateMusicTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :music_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_reference :events, :music_type, index: true
  end
end
