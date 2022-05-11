class AddIsModToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_mod, :boolean, default: false
  end
end
