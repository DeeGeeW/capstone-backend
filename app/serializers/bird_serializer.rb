class BirdSerializer < ActiveModel::Serializer
  attributes :id, :c_name, :s_name, :image_url, :post_count, :description, :background_url, :comments

  has_many :comments
end
