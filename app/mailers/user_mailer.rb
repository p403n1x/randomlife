class UserMailer < ApplicationMailer
  def invitation
    @user = params[:user]
    @password = params[:password]
    mail(to: @user.email, subject: 'Welcome to Random Life!')
    # This will render a view in `app/views/user_mailer`!
  end
end
