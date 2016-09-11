class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])
    # @first_type = @category.types[0] if @category.types != nil
    @category.types.each do |type|
      if type.Authorized == true then
        @first_type = type
        break
      end
    end
    if @first_type != nil
      @products = @first_type.products.where(:Authorized => true).paginate :page => params[:page],:per_page => 6
    end
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end
  
  #find subtypes of a category
  def find_subtypes
    types = Category.find(params[:id]).types
    result = []
    types.each do |type|
      result.push([type.id, type.name])
    end
    render json: result
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def allproducts
    @products = Product.where(:Authorized => true).paginate :page => params[:page], :per_page => 10
    # @products = Product.search(params).paginate(:page => params[:page], :per_page => 2)
  end
  
  def product_search
    @products = Product.searchproduct(params).paginate(:page => params[:page], :per_page => 10)
  end



  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
