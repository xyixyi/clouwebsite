class SocietyRecuritmentsController < ApplicationController
  before_action :set_society_recuritment, only: [:show, :edit, :update, :destroy]

  # GET /society_recuritments
  # GET /society_recuritments.json
  def index
    # @society_recuritments = SocietyRecuritment.all
    @society_recuritments = SocietyRecuritment.where(:Authorized => true).where("DATE(deadline) > DATE(?)", Time.now).order(created_at: :desc)

  end

  # GET /society_recuritments/1
  # GET /society_recuritments/1.json
  def show
        @recuritment = SocietyRecuritment.find(params[:id])
  end

  # GET /society_recuritments/new
  def new
    @society_recuritment = SocietyRecuritment.new
  end

  # GET /society_recuritments/1/edit
  def edit
  end

  # POST /society_recuritments
  # POST /society_recuritments.json
  def create
    @society_recuritment = SocietyRecuritment.new(society_recuritment_params)

    respond_to do |format|
      if @society_recuritment.save
        format.html { redirect_to @society_recuritment, notice: 'Society recuritment was successfully created.' }
        format.json { render :show, status: :created, location: @society_recuritment }
      else
        format.html { render :new }
        format.json { render json: @society_recuritment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /society_recuritments/1
  # PATCH/PUT /society_recuritments/1.json
  def update
    respond_to do |format|
      if @society_recuritment.update(society_recuritment_params)
        format.html { redirect_to @society_recuritment, notice: 'Society recuritment was successfully updated.' }
        format.json { render :show, status: :ok, location: @society_recuritment }
      else
        format.html { render :edit }
        format.json { render json: @society_recuritment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /society_recuritments/1
  # DELETE /society_recuritments/1.json
  def destroy
    @society_recuritment.destroy
    respond_to do |format|
      format.html { redirect_to society_recuritments_url, notice: 'Society recuritment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_society_recuritment
      @society_recuritment = SocietyRecuritment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def society_recuritment_params
      params.require(:society_recuritment).permit(:title, :position, :department, :deadline, :description)
    end
end
