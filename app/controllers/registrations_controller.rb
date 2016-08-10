class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:realName, :phoneNumber, :email, :password, :password_confirmation, :department, :company)
  end

  def account_update_params
    params.require(:user).permit(:realName, :phoneNumber, :email, :password, :password_confirmation, :department, :company)
  end
end