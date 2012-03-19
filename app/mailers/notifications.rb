class Notifications < ActionMailer::Base
  default from: "amalia.hawkins@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.general.subject
  #
  def general
    @greeting = "New content"
    mail to: "amalia.hawkins@gmail.com"
  end
end
