class WelcomeMailer < ApplicationMailer
    # default from: 'walukaweb@gmail.com'

    def welcome_email(newuser)
      @user = newuser
      @url  = 'http://example.com/login'
      mail(to: @user.email, subject: 'Welcome to T&T Com.')
    end
end
