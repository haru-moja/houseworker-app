class HomesController < ApplicationController
  def index
  end
  
  def new
    @home = Home.new    
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def home_params
    params.require(:home).permit(:name, user_ids: [])
  end
end
