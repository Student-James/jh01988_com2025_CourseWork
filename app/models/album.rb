class Album < ApplicationRecord
  validates :artist, presence: true
  validates :title, presence: true
  validates :title, uniqueness: true
end
