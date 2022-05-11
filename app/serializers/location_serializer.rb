class LocationSerializer < ActiveModel::Serializer
  attributes :id, :state, :state_bird, :comments, :location_comments

  has_many :comments
end
