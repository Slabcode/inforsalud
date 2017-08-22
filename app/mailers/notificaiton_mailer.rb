class NotificaitonMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notificaiton_mailer.admin_pass.subject
  #
  def admin_pass(email,pass)
    @pass = pass

    mail(to: email,subject: "Creacion de administrador",reply_to: "contacto@inforsalud.com.co")
  end
end
