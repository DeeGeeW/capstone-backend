class CommentSerializer < ActiveModel::Serializer
  attributes :id, :bird_id, :location_id, :user_id, :comment_text, :lat, :long 

  belongs_to :bird_id
  belongs_to :location_id
  # belongs_to :users
  
end
