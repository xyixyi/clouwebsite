class SearchController < ApplicationController


  def index
  end


  def show
  end


  def new
  end


  def edit
  end

  def create

  end

  def update

  end

  # search function
  # search from all databases, return result and put them to search#searchalldbs.erb
  def searchalldbs
    #using elastic search model
    @result = Elasticsearch::Model.search(params[:search], 
        [Product, CompanyNews, QandA, Bid, SpecialNewsOne, SpecialNewsTwo, QandA]).results.to_a.map(&:to_hash)
  end

end
