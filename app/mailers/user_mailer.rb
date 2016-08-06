class UserMailer < ApplicationMailer
  default from: "xyics160@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_changed.subject
  #
  def password_changed(id)
    @user = User.find(id)
    mail to: @user.email, subject: "Your password has changed"
  end
  
  def password_reset(user, token)
    @resource = user
    @token = token
    mail(:to => user.email,
         :subject => 'Password Reset Notification')
  end
end
