class ItemsController < ApplicationController

  def create
    @item = item.find(params[:item_id])
    @item = @item.items.build(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "item was saved."
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      render :new
    end
  end
  
end
