class CompletesController < ApplicationController
  before_action :set_home
  before_action :set_work
  def index
    @complete_report = CompleteReport.new
  end

  def show
    @report = Report.find(params[:id])
  end
  
  def create
    @complete_report = CompleteReport.new(complete_params)
    if @complete_report.save
      redirect_to home_works_path(@home.id)
    else
      render :index
    end
  end

  private
  
  def set_home
    @home = Home.find(params[:home_id])
  end

  def set_work
    @work = Work.find(params[:work_id])
  end
  
  def complete_params
    params.require(:complete_report).permit(:text_report, :feeling_score_id, images: []).merge(work_id: params[:work_id], user_id: current_user.id)
  end
end