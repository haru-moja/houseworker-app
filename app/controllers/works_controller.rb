class WorksController < ApplicationController
  before_action :set_home
  def index
    
    @works = Work.all
    @work = Work.new
  end
  def new
    @work = Work.new
  end
  def create

    @work = Work.new(params_work)
    if @work.save
      redirect_to home_works_path(@home.id)
    else
      render :new
    end
  end
  def show

    @work = Work.find(params[:id])
  end
  
  def edit

    @work = Work.find(params[:id])
  end
  
  def update

    @work = Work.find(params[:id])
    if @work.update(params_work)
      redirect_to home_works_path(@home.id)
    else
      render :edit
    end
  end
  
  def destroy

    @work = Work.find(params[:id])
    @work.destroy
    redirect_to home_works_path(@home.id)
  end
  private
  def params_work
    params.require(:work).permit(:title, :text_content, :price, :need_time, :start_time, images: []).merge(user_id: current_user.id, home_id: params[:home_id])
  end
  def set_home
    @home = Home.find(params[:home_id])
  end
end
