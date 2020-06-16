class ApplicationController < ActionController::Base

  #  protected

  # def after_sign_in_path_for(resource)
  #   if current_user.first_name == nil
  #     edit_user_path(current_user)
  #   else
  #     bookings_path
  #   end
  # end

  # def after_sign_out_path_for(resource)
  #   root_path
  # end


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :birth_date, :photo])
  end

end
