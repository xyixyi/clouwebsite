class SpecialNewsOneController < ApplicationController
    
    def index
        @news = SpecialNewsOne.all
    end

 
end
