class NewsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  

  def show

  end

  def index
  end
  
  def products

  end

  def new
  end

  def create

  end

  def edit
  end

  def update

  end

  def destroy
  end

  def showindustrynews
    @news = IndustryNews.find(params[:id])
  end
  
  def showcompanynews
    @news = CompanyNews.find(params[:id])
  end
end
