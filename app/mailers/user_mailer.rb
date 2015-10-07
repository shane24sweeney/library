class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.book_available_notification.subject
  default from: "admin@sandbox0a76c1fec70c49078ae1b343c645e3ea.mailgun.org"
  #
  def book_available_notification
    @greeting = "Hi"
    mail to: "moharnab123saikia@gmail.com", subject: "Success! You did it."
  end
end
