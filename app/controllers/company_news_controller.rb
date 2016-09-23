class CompanyNewsController < ApplicationController

  def index
    @company_news = CompanyNews.where(:Authorized => true).order("created_at desc").paginate :page => params[:page],:per_page => 6
  end


  def show
    @news = CompanyNews.where(:Authorized => true).find(params[:id])
  end


  def new
  end


  def edit
  end


  def create
  end

  def update
  end
  



  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
    end
end
