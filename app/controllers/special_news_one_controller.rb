class SpecialNewsOneController < ApplicationController
    
    def index
        @news = SpecialNewsOne.all
    end
    
    def show
        @news = SpecialNewsOne.find(params[:id])
    end

 
end
