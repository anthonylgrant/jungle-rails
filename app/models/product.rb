class Product < ActiveRecord::Base

  monetize :price_cents, numericality: true, allow_nil: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true

  def sold_out?
    quantity < 1
  end

end
