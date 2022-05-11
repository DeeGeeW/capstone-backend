class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :new_bird

      t.timestamps
    end
  end
end
