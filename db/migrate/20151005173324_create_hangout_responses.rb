class CreateHangoutResponses < ActiveRecord::Migration
  def change
    create_table :hangout_responses do |t|
      t.integer :hangout_id
      t.integer :response_id

      t.timestamps null: false
    end
  end
end
