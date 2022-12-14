class UserMailer < ApplicationMailer
    default from: 'mojo_developpement@protonmail.com'

    def welcome_email(user)
      @user = user 
      @url  = 'https://mojo-coaching.fly.dev/users/sign_in' 
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

    def new_meeting_email(user)
      @user = user
      @url  = 'https://mojo-coaching.fly.dev/users/sign_in'
      mail(to: @user.email, subject: "Confirmation d'une nouvelle demande de meeting")
    end
end