class ApplicationController < ActionController::Base

   protected

  def after_sign_in_path_for(resource)
    if current_user.first_name == nil
      edit_user_path(current_user)
    else
      bookings_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
