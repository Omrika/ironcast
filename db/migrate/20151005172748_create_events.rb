class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :description
      t.string :location
      t.integer :hours
      t.integer :minutes

      t.timestamps null: false
    end
  end
end
