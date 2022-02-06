class DeleteEmployeeMailer < ApplicationMailer
    def delete_employee(emp)
        userdetails=User.find(session[:user_id])
        @emp = emp
        mail(to: "cwaluka@yahoo.com", subject: 'Data Changed in your T&T account.')
      end
end

