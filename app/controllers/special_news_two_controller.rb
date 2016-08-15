class SpecialNewsTwoController < ApplicationController
    
    def index
        @news = SpecialNewsTwo.all
    end

 
end
