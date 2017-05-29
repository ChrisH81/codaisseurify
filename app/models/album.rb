class Album < ApplicationRecord
  belongs_to :artist

  validates :album_name, presence:true
  validates :album_name, length:{maximum:100}
  validates :released, presence:true
  validates :released, length:{maximum:4}
  validates :album_image_url, presence:true

  def self.order_list(sort_order)
    if sort_order == "newest" || sort_order.blank?
      order(created_at: :desc)
    elsif sort_order == "name"
      order(album_name: :asc)
    else
      order(created_at: :asc)
    end
  end
end
