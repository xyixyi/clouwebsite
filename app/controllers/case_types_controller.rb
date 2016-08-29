class CaseTypesController < ApplicationController
  before_action :set_case_type, only: [:show, :edit, :update, :destroy]

  # GET /case_types
  # GET /case_types.json
  def index
    @case_types = CaseType.all
    if @case_types
      @first_type = @case_types[0]
      if @first_type
        @cases = ServiceCase.where(:case_type_id => @first_type.id).paginate :page => params[:page],:per_page => 10
      end
    end
      
  end

  # GET /case_types/1
  # GET /case_types/1.json
  def show
    @case_types = CaseType.all
    @type = CaseType.find(params[:id])
    if @type
      @cases = ServiceCase.where(:case_type_id => @type.id).paginate :page => params[:page],:per_page => 10
    end
  end

  # GET /case_types/new
  def new
    @case_type = CaseType.new
  end

  # GET /case_types/1/edit
  def edit
  end

  # POST /case_types
  # POST /case_types.json
  def create
    @case_type = CaseType.new(case_type_params)

    respond_to do |format|
      if @case_type.save
        format.html { redirect_to @case_type, notice: 'Case type was successfully created.' }
        format.json { render :show, status: :created, location: @case_type }
      else
        format.html { render :new }
        format.json { render json: @case_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_types/1
  # PATCH/PUT /case_types/1.json
  def update
    respond_to do |format|
      if @case_type.update(case_type_params)
        format.html { redirect_to @case_type, notice: 'Case type was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_type }
      else
        format.html { render :edit }
        format.json { render json: @case_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_types/1
  # DELETE /case_types/1.json
  def destroy
    @case_type.destroy
    respond_to do |format|
      format.html { redirect_to case_types_url, notice: 'Case type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_type
      @case_type = CaseType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_type_params
      params.require(:case_type).permit(:name)
    end
    

end
