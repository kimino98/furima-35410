class BuyerPurchaseHistory
  include ActiveModel::Model
  attr_accessor :post_code, :region_id, :city, :address, :building_name, :phone_number, :user_id, :item_id

  with_options presence: true do
    validates :post_code, format: { with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}\z/ }
    validates :region_id, numericality: { other_than: 1 }
    validates :city
    validates :address
    validates :phone_number, format: { with: /\A\d{11}\z/ }
    validates :user_id
    validates :item_id
  end

  def save
    Buyer.create(post_code: post_code, region_id: region_id, city: city address: address building_name: building_name, phone_number: phone_number)
    PurchaseHistory.create(user_id: user_id. item_id: item_id)
  end
end