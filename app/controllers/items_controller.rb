class ItemsController < ApplicationController
 def index
 end

 def new
  @item = Item.new
 end

 def create
  Item.create(item_params)
 end


 private
 def item_params
   arams.require(:item).permit(:image, :name, :text,)
 end
end
