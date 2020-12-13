class AttendeesController < ApplicationController
    
    
    def index
        @attendees = Attendee.all
    end
    
    def new
        @attendee = Attendee.new
    end
    
    def create
        attendee = Attendee.create(attendee_params)
        ContactMailer.send_when_attendee_create(attendee).deliver
        redirect_to attendees_path
    end
    
    def destroy
        attendee = Attendee.find(params[:id])
        attendee.destroy
        redirect_to attendees_path
    end
    
    def attendee_params
        params.require(:attendee).permit(:name).merge(user_id: current_user.id)
    end
end
