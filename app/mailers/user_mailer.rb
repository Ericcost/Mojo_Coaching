class UserMailer < ApplicationMailer
    default from: 'mojo_developpement@protonmail.com'

    def welcome_email(user)
      @user = user 

      @url  = 'https://mojo-coaching.fly.dev/users/sign_in' 

      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end
  end