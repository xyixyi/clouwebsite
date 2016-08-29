class SpecialNewsTwoController < ApplicationController
    
    def index
        @news = SpecialNewsTwo.all
    end
    
    def show
        @news = SpecialNewsTwo.find(params[:id])
    end
 
end
