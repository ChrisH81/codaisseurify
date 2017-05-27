class Artist < ApplicationRecord
  has_many :albums, dependent: :destroy

  validates :name, presence:true
  validates :name, length:{maximum:35}
  validates :name, uniqueness:true
  validates :bio, presence:true
  validates :bio, length:{maximum:1000}
  validates :image_url, presence:true

  def self.order_by_name
      order(:name)
  end
end
