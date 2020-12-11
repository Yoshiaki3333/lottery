class WinnersController < ApplicationController
    
    def index
        number = Number.last.number
        attendees = Attendee.all
        @winners = attendees.sample(number)
    end
end
