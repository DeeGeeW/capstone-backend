class CommentSerializer < ActiveModel::Serializer
  attributes :id, :bird_id, :location_id, :user_id, :comment_text, :lat, :long 

  belongs_to :locations
  belongs_to :birds
  # belongs_to :users
  
end
