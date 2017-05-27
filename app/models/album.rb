class Album < ApplicationRecord
  belongs_to :artist

  validates :album_name, presence:true
  validates :album_name, length:{maximum:100}
  validates :released, presence:true
  validates :released, length:{maximum:4}
  validates :album_image_url, presence:true


end
