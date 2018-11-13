class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true

  has_many :artworks,
    class_name: :Artwork,
    foreign_key: :artist_id,
    primary_key: :id

  has_many :shares,
    class_name: :ArtWorkShare,
    foreign_key: :viewer_id,
    primary_key: :id

  has_many :shared_artworks,
    through: :shares,
    source: :artwork
end
