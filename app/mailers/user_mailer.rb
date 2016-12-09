class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'localhost:3000'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def order_email(user, order)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: @user.email,
        subject:
        'Welcome to My Awesome Site'
    )
  end
end
