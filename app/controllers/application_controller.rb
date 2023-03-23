class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:splash] unless Rails.env == 'test'
  
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def after_sign_in_path_for(_resource)
    groups_path
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation)
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end
end
