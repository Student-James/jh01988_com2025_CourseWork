class Review < ApplicationRecord
  belongs_to :album
  validates :reviewtitle, :album, presence: true
end
