class UserMailerPreview < ActionMailer::Preview
  def welcome_email
    UserMailer.welcome_email(User.first)
  end

  def order_email
    UserMailer.order_email(User.first)
  end

end