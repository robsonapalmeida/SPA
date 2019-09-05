class AdminMailer < ApplicationMailer
    #default from: 'noreply@gmail.com'
    #$S_Type
    def servicio_email(email_customer)
        @email_customer = email_customer.name 
        @servicedate = email_customer.servicedate.strftime("%d/%m/%Y") 
        @servicetime = email_customer.servicetime.strftime("%H:%M:%S")
        @servicename = email_customer.service.name
        @id = email_customer.id
        @email = email_customer.email

        @url = 'http://localhost:3000/user_x_services/?customer_email='
        
       
        mail(from: @email, to: 'robsonsgbl@gmail.com', subject: "Su servicio fue cadastrado!")

     end
    
end
