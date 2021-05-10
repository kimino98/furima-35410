class Item < ApplicationRecord
  extend ActiveHash::Asociations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :postage
  belongs_to :region
  belongs_to :shopping_date
  
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :text
    validates :price
    validates :image

    with_options numericality: { other_than: 1} do
      validates :category_id
      validates :status_id
      validates :postage_id
      validates :region_id
      validates :shoppoing_date_id
    end
  end


end
