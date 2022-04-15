class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :state
      t.string :state_bird
      t.string :location_comments

      t.timestamps
    end
  end
end
