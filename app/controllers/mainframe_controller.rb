class MainframeController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  

  def show

  end

  def index
    @products = Product.all
  end
  
  def products
    @products = Product.all
    @categories = Category.all
  end
  
  def news
    @industry_news = IndustryNews.all.reverse
    @company_news = CompanyNews.all.reverse
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
  
end
