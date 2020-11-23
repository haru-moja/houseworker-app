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
  def show
    @work = Work.find(params[:id])
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(params_work)
      redirect_to root_path, notice:"編集しました"
    else
      render :edit
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to root_path, notice:"削除しました"
  end
  private
  def params_work
    params.require(:work).permit(:title, :text_content, :price, :need_time, :start_time, images: []).merge(user_id: current_user.id)
  end
end
