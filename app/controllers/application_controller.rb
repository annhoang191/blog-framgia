class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :store_return_to, unless: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [:name, :picture]
    devise_parameter_sanitizer.permit :account_update, keys: [:name, :picture]
  end

  def stored_location_for resource_or_scope
    session[:user_return_to] || super
  end

  def store_return_to
    store_location_for :user, request.url
  end
end
