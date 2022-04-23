class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :bird_id
      t.integer :location_id
      t.integer :user_id
      t.string :comment_text
      t.decimal :lat, precision: 8, scale: 5
      t.decimal :long, precision: 8, scale: 5

      t.timestamps
    end
  end
end
