class AttendeesController < ApplicationController
    
    def index
        @attendee = Attendee.new
        @attendees = Attendee.all
    end
    
    def create
        Attendee.create(attendee_params)
        redirect_to root_path
    end
    
    def attendee_params
        params.require(:attendee).permit(:name).merge(user_id: current_user.id)
    end
    
end
