class LocationSerializer < ActiveModel::Serializer
  attributes :id, :state, :state_bird, :comments

  has_many :comments
end
