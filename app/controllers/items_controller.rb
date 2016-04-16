class ItemsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @item = @user.posts.build(item_params)
    @item.user = current_user

    unless @item.save
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :new
    end
  end
  
  private
 
  def item_params
    params.require(:item).permit(:name)
  end
  
end
