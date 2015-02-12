class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_servs_for_menu
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def set_servs_for_menu
    @serv = Category.find(4)
    @servs = @serv.subcategories
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end
