class ArtWorkShare < ApplicationRecord

  belongs_to :artwork,
    class_name: :Artwork,
    foreign_key: :art_work_id,
    primary_key: :id

  belongs_to :viewer,
    class_name: :User,
    foreign_key: :viewer_id,
    primary_key: :id

  
end
