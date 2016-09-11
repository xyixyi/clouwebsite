class SpecialNewsOneController < ApplicationController
    
    def index
        @news = SpecialNewsOne.where(:Authorized => true)
    end
    
    def show
        @news = SpecialNewsOne.find(params[:id])
    end

 
end
