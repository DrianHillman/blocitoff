class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
# This will require user sign-in to do anything with the app
  # before_action :authenticate_user!
end
