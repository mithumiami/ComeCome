class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end


private
  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :is_active)
  end

end
