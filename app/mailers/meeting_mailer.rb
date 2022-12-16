class MeetingMailer < ApplicationMailer
  default from: 'mojo_developpement@protonmail.com'

  def new_meeting_email_coach(meeting)
    @meeting = meeting
    @coach = User.find(meeting.coach_id)
    @url  = 'https://mojo-coaching.fly.dev/meetings/new'
    mail(to: @coach.email, subject: "Confirmation d'une nouvelle réservation de meeting")
  end

  def new_meeting_email_driver(meeting)
    @meeting = meeting
    @driver = User.find(meeting.driver_id)
    @url  = 'https://mojo-coaching.fly.dev/meetings/new'
    mail(to: @driver.email, subject: "Confirmation de création d'un nouveau meeting")
  end

end
