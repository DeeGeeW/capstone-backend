class CreateMigs < ActiveRecord::Migration[7.0]
  def change
    create_table :migs do |t|

      t.timestamps
    end
  end
end
