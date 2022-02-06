class DeleteEmployeeMailer < ApplicationMailer
    def delete_employee
        #userdetails=User.find(session[:user_id])
        # @emp = "fgfg"
        mail(to: "cwaluka@yahoo.com", subject: 'Data Changed in your T&T account.')
      end
end

