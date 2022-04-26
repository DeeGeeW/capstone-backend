class AddCommentIdToBirds < ActiveRecord::Migration[7.0]
  def change
    add_column :birds, :comment_id, :integer
  end
end
