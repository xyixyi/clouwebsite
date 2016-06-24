class MajorProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_major_product, only: [:show, :edit, :update, :destroy]

  # GET /major_products
  # GET /major_products.json
  def index
    @major_products = MajorProduct.all
  end

  # GET /major_products/1
  # GET /major_products/1.json
  def show
  end

  # GET /major_products/new
  def new
    @major_product = MajorProduct.new
  end

  # GET /major_products/1/edit
  def edit
  end

  # POST /major_products
  # POST /major_products.json
  def create
    @major_product = MajorProduct.new(major_product_params)

    respond_to do |format|
      if @major_product.save
        format.html { redirect_to @major_product, notice: 'Major product was successfully created.' }
        format.json { render :show, status: :created, location: @major_product }
      else
        format.html { render :new }
        format.json { render json: @major_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /major_products/1
  # PATCH/PUT /major_products/1.json
  def update
    respond_to do |format|
      if @major_product.update(major_product_params)
        format.html { redirect_to @major_product, notice: 'Major product was successfully updated.' }
        format.json { render :show, status: :ok, location: @major_product }
      else
        format.html { render :edit }
        format.json { render json: @major_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /major_products/1
  # DELETE /major_products/1.json
  def destroy
    @major_product.destroy
    respond_to do |format|
      format.html { redirect_to major_products_url, notice: 'Major product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_major_product
      @major_product = MajorProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def major_product_params
      params.require(:major_product).permit(:categoryId, :categoryName, :categoryImg, :categoryDescription)
    end
end
