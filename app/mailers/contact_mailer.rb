class ContactMailer < ApplicationMailer
 
  def send_when_attendee_create(attendee)
    @attendee = attendee
    mail to: @attendee.user.email,
         subject: '抽選に参加しました'
  end
end
