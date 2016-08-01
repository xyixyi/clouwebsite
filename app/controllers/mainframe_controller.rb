class MainframeController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  

  def show

  end

  def index
    @products = Product.all
    @popproducts = PopProduct.limit(4).order('id desc')
  end
  
  def products
    @products = Product.all
    @popproducts = PopProduct.limit(4).order('id desc')
    @categories = Category.all
  end
  
  def news
    # @industry_news = IndustryNews.all.reverse
    # @company_news = CompanyNews.all.reverse

    @company_news = CompanyNews.paginate :page => params[:page],:per_page => 6
  end
  
  def industrynews
     @industry_news = IndustryNews.paginate :page => params[:page], :per_page => 6
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
