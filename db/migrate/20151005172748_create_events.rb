class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :hours
      t.integer :minutes
      t.string :meridiem

      t.timestamps null: false
    end
  end
end
