require "paper_trail"
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # redirect unauthorized user or admin
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '', :alert => exception.message # will be changed to an error page
  end
  before_action :set_paper_trail_whodunnit
  protected
  def configure_new_column_to_devise_permitted_parameters
    registration_params = [:realName, :email, :password,
                  :password_confirmation, :alternate_email, :phoneNumber, :company, :department]
    if params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    elsif params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    end
  end    
  
  # def layout_by_resource
  #   if devise_controller? && resource_name == :user
  #     “backstage"
  #   else
  #     “application"
  #   end
  # end
end
