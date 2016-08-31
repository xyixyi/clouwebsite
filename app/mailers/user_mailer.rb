class UserMailer < ApplicationMailer
  # default from: "xyics160@gmail.com"
  default from: "official@szclou.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_changed.subject
  #
  def password_changed(user)
    @user = User.find(user)
    mail to: @user.email, subject: "您的密码已更改"
  end
  
  def password_reset(user, token)
    @resource = user
    @token = token
    mail(:to => user.email,
         :subject => 'Password Reset Notification')
  end
  
  def send_auth_email(user)
    @user = User.find(user)
    @user.send_auth_email = false
    @user.save
    mail to: @user.email, subject: "您在科陆电子官网的用户限权已更改"
  end
end
