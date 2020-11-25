class UserContentsController < ApplicationController
  def index
    @user_contents = UserContent.all
    @completes = Complete.all
    from  = Time.current.at_beginning_of_day
    to    = (from + 1.month)
    @completes_month = Complete.where(created_at: from...to)
  end

  def new
    @user_content = UserContent.new
  end
  def create
    @user_content = UserContent.new(user_content_params)
    
  end
  def edit
    @user_content = UserContent.find(parms[:id])
  end
  def update
    @user_content = UserContent.find(parms[:id])
    @user_content = UserContent.update(user_content_params)
  end
  
  private
  def user_content_params
    params.require(:user_content).permit(:text_content).merge(user_id: current_user.id)
  end
end
