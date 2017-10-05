class CreateAboutUs < ActiveRecord::Migration[5.1]
  def change
    create_table :about_us do |t|
      t.string :name
      t.string :role
      t.text :description

      t.timestamps
    end
  end
end
