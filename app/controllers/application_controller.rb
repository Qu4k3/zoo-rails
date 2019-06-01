class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?
protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:username, :email, :password, :password_confirmation, :remember_me, :animal_photo, :animal_photo_cache)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:username, :password, :password_confirmation, :current_password, :animal_photo, :animal_photo_cache, :remove_animal_photo)
    end
  end
  
end
