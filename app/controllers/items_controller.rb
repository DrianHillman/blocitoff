class ItemsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @new_item = Item.new

    if @item.save
     flash[:notice] = "Item Saved! You have 7 days: Ready Set Go!"
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
    end
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  
  private
    def item_params
      params.require(:item).permit(:name)
    end
end
