# Preview all emails at http://localhost:3000/rails/mailers/delete_employee_mailer
class DeleteEmployeeMailerPreview < ActionMailer::Preview
    def delete_employee
        DeleteEmployeeMailer.with(emp: Employee.last).delete_employee
      end
end
# 