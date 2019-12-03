class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:pseudo, :name, :address, :photo, :photo_cache])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:pseudo, :name, :address, :photo, :photo_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:pseudo, :name, :address, :photo, :photo_cache])
  end
end
