class YearReportsController < ApplicationController
  before_action :set_year_report, only: [:show, :edit, :update, :destroy]

  # GET /year_reports
  # GET /year_reports.json
  def index
    @year_reports = YearReport.all
  end

  # GET /year_reports/1
  # GET /year_reports/1.json
  def show
  end

  # GET /year_reports/new
  def new
    @year_report = YearReport.new
  end

  # GET /year_reports/1/edit
  def edit
  end

  # POST /year_reports
  # POST /year_reports.json
  def create
    @year_report = YearReport.new(year_report_params)

    respond_to do |format|
      if @year_report.save
        format.html { redirect_to @year_report, notice: 'Year report was successfully created.' }
        format.json { render :show, status: :created, location: @year_report }
      else
        format.html { render :new }
        format.json { render json: @year_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /year_reports/1
  # PATCH/PUT /year_reports/1.json
  def update
    respond_to do |format|
      if @year_report.update(year_report_params)
        format.html { redirect_to @year_report, notice: 'Year report was successfully updated.' }
        format.json { render :show, status: :ok, location: @year_report }
      else
        format.html { render :edit }
        format.json { render json: @year_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /year_reports/1
  # DELETE /year_reports/1.json
  def destroy
    @year_report.destroy
    respond_to do |format|
      format.html { redirect_to year_reports_url, notice: 'Year report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_year_report
      @year_report = YearReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def year_report_params
      params.require(:year_report).permit(:date, :attachment)
    end
end
