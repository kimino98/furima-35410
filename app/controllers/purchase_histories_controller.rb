class PurchaseHistoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_purchase_history, only: [:index, :create]
  before_action :sold_out, only: [:index]

  def index
    @buyer_purchase_history = BuyerPurchaseHistory.new
    if current_user == @item.user
      redirect_to root_path
    end
  end

  def create
    @buyer_purchase_history = BuyerPurchaseHistory.new(buyer_purchase_history_params)
    if @buyer_purchase_history.valid? 
      @buyer_purchase_history.save
      redirect_to root_path
     else
      render :index
    end
  end

  private
  def buyer_purchase_history_params
    params.require(:buyer_purchase_history).permit(:post_code, :region_id, :city, :address, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def set_purchase_history
    @item = Item.find(params[:item_id])
  end
  
  def sold_out
    redirect_to root_path if @item.purchase_history.present?
  end
end

