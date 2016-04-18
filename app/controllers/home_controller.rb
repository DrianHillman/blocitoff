class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = current_user
    @new_item = @user.items.new
  end

end
