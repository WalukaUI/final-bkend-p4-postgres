class WelcomeMailer < ApplicationMailer
    default from: 'cwaluka@gmail.com'

    def welcome_email
      @user = params[:user]
      @url  = 'http://example.com/login'
      mail(to: "cwaluka@yahoo.com", subject: 'Welcome to My Awesome Site')
    end
end
# @user.email