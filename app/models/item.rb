class Item < ApplicationRecord
  extend ActiveHash::Asociations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :postage
  belongs_to :region
  belongs_to :shopping_date
  
  belongs_to :user
  has_one_attached :image

end
