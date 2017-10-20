class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_reference :events, :location, index: true
  end
end
