class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    if resource_name == :admin
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:name,:lastname])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name,:lastname])
    elsif resource_name == :user
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:name,:lastname,:mobile,:avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name,:lastname,:mobile,:avatar])
    elsif resource_name == :partner
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:lastname])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name,:lastname])
    else
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:name,:lastname,:mobile,:avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name,:lastname,:mobile,:avatar])
    end
  end

  def after_sign_in_path_for(resource)
    if current_admin
      dashboard_path
    else
      root_path
    end
  end
end
