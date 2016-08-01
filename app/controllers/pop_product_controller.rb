class PopProductController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  

  def show
    @product = PopProduct.find(params[:id])
  end
  
  def all_products_show
      @product = Product.find(params[:id])
  end

  def index

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
