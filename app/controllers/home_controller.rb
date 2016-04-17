class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = current_user
  end
  
  private
    def item_params
      params.require(:item).permit(:name)
    end
end
