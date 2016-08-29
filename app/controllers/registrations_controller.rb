class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:realName, :phoneNumber, :email, :password, :password_confirmation, :department, :company)
  end

  def account_update_params
    params.require(:user).permit(:realName, :phoneNumber, :email, :password, :password_confirmation, :department, :company)
  end
  
  def after_sign_up_path_for(resource)
    registrationsuccess_path # Or :prefix_to_your_route
  end
  
end