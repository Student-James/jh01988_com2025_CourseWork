class Album < ApplicationRecord
  validates :artist, presence: true
  validates :title, presence: true
  validates :title, uniqueness: true
  has_many :tracks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user

  scope :user_albums,->(user){where(['user_id = ?', user.id])}
end
