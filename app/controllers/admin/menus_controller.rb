class Admin::MenusController < ApplicationController

  def index
    @menus = Menu.all
  end

  def show
   @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
  end

 def create
    menu = Menu.new(menu_params)
    menu.save!
    redirect_to admin_menus_path
 end

private

  def menu_params
    params.require(:menu).permit(:title, :caption, :price)
  end

end
