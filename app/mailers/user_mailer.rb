class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.sign_up.subject
  #
  def sign_up(user)
    @greeting = "Hi #{user.first_name} #{user.last_name}"
    @body = "You are welcome to 'Movie rental' portal.Please <%= link_to('visit our movies page ',root_path) %> to rent the lattest movies"
    @conclusion ="Thank you"

    mail to: "#{user.email}"
  end
end
