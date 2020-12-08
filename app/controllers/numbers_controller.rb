class NumbersController < ApplicationController
    
    def create
        Number.create(number_params) 
    end
    
    private
    def number_params
        params.require(:number).permit(:number)
    end

end