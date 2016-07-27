class CampusRecuritmentsController < ApplicationController
  before_action :set_campus_recuritment, only: [:show, :edit, :update, :destroy]

  # GET /campus_recuritments
  # GET /campus_recuritments.json
  def index
    # @campus_recuritments = CampusRecuritment.all
    @campus_recuritments = CampusRecuritment.where("DATE(deadline) > DATE(?)", Time.now).order(created_at: :desc)
  end

  # GET /campus_recuritments/1
  # GET /campus_recuritments/1.json
  def show
    @recuritment = CampusRecuritment.find(params[:id])
  end

  # GET /campus_recuritments/new
  def new
    @campus_recuritment = CampusRecuritment.new
  end

  # GET /campus_recuritments/1/edit
  def edit
  end

  # POST /campus_recuritments
  # POST /campus_recuritments.json
  def create
    @campus_recuritment = CampusRecuritment.new(campus_recuritment_params)

    respond_to do |format|
      if @campus_recuritment.save
        format.html { redirect_to @campus_recuritment, notice: 'Campus recuritment was successfully created.' }
        format.json { render :show, status: :created, location: @campus_recuritment }
      else
        format.html { render :new }
        format.json { render json: @campus_recuritment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campus_recuritments/1
  # PATCH/PUT /campus_recuritments/1.json
  def update
    respond_to do |format|
      if @campus_recuritment.update(campus_recuritment_params)
        format.html { redirect_to @campus_recuritment, notice: 'Campus recuritment was successfully updated.' }
        format.json { render :show, status: :ok, location: @campus_recuritment }
      else
        format.html { render :edit }
        format.json { render json: @campus_recuritment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campus_recuritments/1
  # DELETE /campus_recuritments/1.json
  def destroy
    @campus_recuritment.destroy
    respond_to do |format|
      format.html { redirect_to campus_recuritments_url, notice: 'Campus recuritment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campus_recuritment
      @campus_recuritment = CampusRecuritment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campus_recuritment_params
      params.require(:campus_recuritment).permit(:title, :position, :department, :deadline, :description)
    end
end
