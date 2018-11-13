class Artwork < ApplicationRecord
  validates :title, uniqueness: {scope: :artist_id}, presence: true
  validates :image_url, uniqueness: true, presence: true

  belongs_to :user,
    class_name: :User,
    foreign_key: :artist_id,
    primary_key: :id

  has_many :shares,
    class_name: :ArtWorkShare,
    foreign_key: :art_work_id,
    primary_key: :id

  has_many :shared_viewers,
    through: :shares,
    source: :viewer
end
