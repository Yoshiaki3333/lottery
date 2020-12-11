class NumbersController < ApplicationController
    
    def index
        @number = Number.new
        @numbers = Number.all
    end 
    
    def create
        Number.create(number_params)
        @numbers = Number.all
    end
    
    private
    def number_params
        params.require(:number).permit(:number)
    end

end