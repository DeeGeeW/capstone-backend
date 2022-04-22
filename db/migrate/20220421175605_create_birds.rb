class CreateBirds < ActiveRecord::Migration[7.0]
  def change
    create_table :birds do |t|
      t.string :c_name
      t.string :s_name
      t.string :image_url
      t.integer :post_count
      t.string :description
      t.string :background_url

      t.timestamps
    end
  end
end
