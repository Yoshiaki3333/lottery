class ContactMailer < ApplicationMailer
 
  def send_when_attendee_create(attendee)
    @attendee = attendee
    
  end
end
