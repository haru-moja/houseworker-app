class WorksController < ApplicationController
  def index
    @works = Work.all
  end
  def new
    @work = Work.new
  end
  def create
    @work = Work.new(params_work)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end
  private
  def params_work
    params.require(:work).permit(:title, :text_content, :price, :need_time_id, :date).merge(user_id: current_user.id)
  end
end
