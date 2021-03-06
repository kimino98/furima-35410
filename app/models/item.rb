class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :postage
  belongs_to :region
  belongs_to :shopping_date

  belongs_to :user
  has_one_attached :image
  has_one :purchase_history

  with_options presence: true do
    validates :name
    validates :text
    validates :image
    validates :price, format: { with: /\A[0-9]+\z/ },
                      numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
    with_options numericality: { other_than: 1 } do
      validates :category_id
      validates :status_id
      validates :postage_id
      validates :region_id
      validates :shopping_date_id
    end
  end
end
