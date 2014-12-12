class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # layout :get_layout?
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
      :email, :password, :password_confirmation, :subdomain, :full_name, 
      :address_line1, :address_line2, :country, :city, :state, :zipcode, :mobile,
      :logo
      ) }
    # def get_layout?
    #   if params[:controller] == "admin/homes"
    #     return "admin"
    #   else
    #     return "application"
    #   end
    # end
  end
end