class WelcomeMailer < ApplicationMailer
    def welcome_email(newuser, verificationnum)
      @user = newuser
      @vnumber=verificationnum
      @url  = 'https://tnt-project-manager.netlify.app'
      mail(to: @user.email, subject: 'Welcome to T&T Com.')
    end
end
