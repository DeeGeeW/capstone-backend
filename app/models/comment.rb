class Comment < ApplicationRecord

  validates :location_id, presence: true
  validates :comment_text, presence: true
  validates :comment_text, length: {in: 10..500}
  validates :lat, presence: true
  validates :lat, numericality: true
  validates :long, presence: true
  # validates: :long, numericality: true


end
