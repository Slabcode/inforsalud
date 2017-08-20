# Preview all emails at http://localhost:3000/rails/mailers/notificaiton_mailer
class NotificaitonMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notificaiton_mailer/admin_pass
  def admin_pass
    NotificaitonMailer.admin_pass
  end

end
