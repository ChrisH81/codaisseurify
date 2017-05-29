class Artist < ApplicationRecord
  has_many :albums, dependent: :destroy

  validates :name, presence:true
  validates :name, length:{maximum:35}
  validates :name, uniqueness:true
  validates :bio, presence:true
  validates :bio, length:{maximum:1000}
  validates :image_url, presence:true

  def self.order_list(sort_order)
    if sort_order == "newest" || sort_order.blank?
      order(created_at: :desc)
    elsif sort_order == "name"
      order(name: :asc)
    else
      order(created_at: :asc)
    end
  end
end
