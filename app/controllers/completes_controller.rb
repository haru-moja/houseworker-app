class CompletesController < ApplicationController
  before_action :set_work
  def index
    @complete_report = CompleteReport.new
  end
  
  def create
    @complete_report = CompleteReport.new(complete_params)
    @complete_report.save
    redirect_to root_path
  end

  private
  
  def set_work
    @work = Work.find(params[:work_id])
  end
  def complete_params
    params.require(:complete_report).permit(:text_report, :feeling_score_id, images: []).merge(work_id: params[:work_id], user_id: current_user.id)
  end
end