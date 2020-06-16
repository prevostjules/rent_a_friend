class ApplicationController < ActionController::Base

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:first_name, :last_name, :birth_date) }
  end
end
