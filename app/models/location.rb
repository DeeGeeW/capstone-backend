class Location < ApplicationRecord
  def comments
    Comment.where(location_id: id)
  end
end
