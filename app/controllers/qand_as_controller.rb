class QandAsController < ApplicationController
  before_action :set_qand_a, only: [:show, :edit, :update, :destroy]

  # GET /qand_as
  # GET /qand_as.json
  def index

  end

  # GET /qand_as/1
  # GET /qand_as/1.json
  def show
    @QandA = QandA.find(params[:id])
  end 

  # GET /qand_as/new
  def new
    @qand_a = QandA.new
  end

  # GET /qand_as/1/edit
  def edit
  end

  # POST /qand_as
  # POST /qand_as.json
  def create
    @qand_a = QandA.new(qand_a_params)

    respond_to do |format|
      if @qand_a.save
        format.html { redirect_to @qand_a, notice: 'Qand a was successfully created.' }
        format.json { render :show, status: :created, location: @qand_a }
      else
        format.html { render :new }
        format.json { render json: @qand_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qand_as/1
  # PATCH/PUT /qand_as/1.json
  def update
    respond_to do |format|
      if @qand_a.update(qand_a_params)
        format.html { redirect_to @qand_a, notice: 'Qand a was successfully updated.' }
        format.json { render :show, status: :ok, location: @qand_a }
      else
        format.html { render :edit }
        format.json { render json: @qand_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qand_as/1
  # DELETE /qand_as/1.json
  def destroy
    @qand_a.destroy
    respond_to do |format|
      format.html { redirect_to qand_as_url, notice: 'Qand a was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qand_a
      @qand_a = QandA.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qand_a_params
      params.require(:qand_a).permit(:title, :QType, :question, :answer, :attachment)
    end
    
      #dynamic load product belone to type
    def find_questions
      if params[:q_type_id]
        @current_type = QType.find(params[:q_type_id])
        @qand_as = QandA.where(:QType_id => params[:q_type_id])
      else
        # Error or @lessons = Lesson.all
        @qand_as = nil
      end
    end
end
