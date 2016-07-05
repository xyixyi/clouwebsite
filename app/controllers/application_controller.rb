class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # redirect unauthorized user or admin
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '', :alert => exception.message # will be changed to an error page
  end
end
