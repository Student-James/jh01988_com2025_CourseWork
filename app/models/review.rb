class Review < ApplicationRecord
  belongs_to :album
  validates :reviewtitle, :album, presence: true
  scope :user_reviews,->(user){joins(:album).where(['user_id = ?', user.id])}
end
