class EmployeeStoriesController < ApplicationController
  before_action :set_employee_story, only: [:show, :edit, :update, :destroy]

  # GET /employee_stories
  # GET /employee_stories.json
  def index
    @employee_stories = EmployeeStory.where(:Authorized => true).reverse
  end

  # GET /employee_stories/1
  # GET /employee_stories/1.json
  def show
    @story = EmployeeStory.find(params[:id])
  end

  # GET /employee_stories/new
  def new
    @employee_story = EmployeeStory.new
  end

  # GET /employee_stories/1/edit
  def edit
  end

  # POST /employee_stories
  # POST /employee_stories.json
  def create
    @employee_story = EmployeeStory.new(employee_story_params)

    respond_to do |format|
      if @employee_story.save
        format.html { redirect_to @employee_story, notice: 'Employee story was successfully created.' }
        format.json { render :show, status: :created, location: @employee_story }
      else
        format.html { render :new }
        format.json { render json: @employee_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_stories/1
  # PATCH/PUT /employee_stories/1.json
  def update
    respond_to do |format|
      if @employee_story.update(employee_story_params)
        format.html { redirect_to @employee_story, notice: 'Employee story was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_story }
      else
        format.html { render :edit }
        format.json { render json: @employee_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_stories/1
  # DELETE /employee_stories/1.json
  def destroy
    @employee_story.destroy
    respond_to do |format|
      format.html { redirect_to employee_stories_url, notice: 'Employee story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_story
      @employee_story = EmployeeStory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_story_params
      params.require(:employee_story).permit(:name, :date, :image, :text)
    end
end
