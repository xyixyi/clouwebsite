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
  
  #dynamic load product belong to type
  def find_products
    if params[:type_id]
      @current_type = Type.find(params[:type_id])
      @products = Type.find(params[:type_id]).products
    else
      # Error or @lessons = Lesson.all
      @products = nil
    end
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @popProduct = PopProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:popProduct).permit(:name, :synopsis, :detail, :Type)
    end
end
