class Public::UsersController < ApplicationController

  def show
    @user = current_user
  end

end
