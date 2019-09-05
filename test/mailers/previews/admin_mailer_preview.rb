# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
     def servicio_email
        AdminMailer.servicio_email @email_customer.email
     end
end
