class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :is_mod

  # has_many :comments
end
