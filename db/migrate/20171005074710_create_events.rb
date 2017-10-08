class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.boolean :best
      t.float :price

      t.timestamps
    end
  end
end
