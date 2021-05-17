class PurchaseHistoriesController < ApplicationController

  def index
    @buyer_purchase_history = BuyerPurchaseHistory.new
    @item = Item.find(params[:item_id])
  end

  def create
    @item = Item.find(params[:item_id])
    @buyer_purchase_history = BuyerPurchaseHistory.new(buyer_purchase_history_params)
    if @buyer_purchase_history.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def buyer_purchase_history_params
    params.require(:buyer_purchase_history).permit(:post_code, :region_id, :city, :address, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end


