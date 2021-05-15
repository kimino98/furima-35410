class PurchaseHistoriesController < ApplicationController

  def index
  end

  def create
    @buyer_purchase_history = BuyerPurchaseHistory.new(buyer_purchase_history_params)
  end

  private
  def buyer_purchase_history_params
    params.require(:buyer_purchase_history).permit(:post_code, :region_id, :city, :address, :building_name, :phone_number, :user_id, :item_id)
  end
end

