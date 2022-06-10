class Public::MenusController < ApplicationController

  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  private

  def menu params
    params.require(:menu).permit(:title, :caption, :price)
  end

end
