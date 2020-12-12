class AttendeesController < ApplicationController
    
    
    def index
        @attendees = Attendee.all
    end
    
    def new
        @attendee = Attendee.new
    end
    
    def create
        Attendee.create(attendee_params)
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
