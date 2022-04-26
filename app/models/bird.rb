class Bird < ApplicationRecord
  def comments
    Comment.where(bird_id: id)
  end
end
