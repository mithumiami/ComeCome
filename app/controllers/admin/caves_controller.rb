class Admin::CavesController < ApplicationController
  def index
    @caves = Cafe.all
  end

  def show
  end

  def new
    @cafe = Cafe.new
  end

  def create
    cafe = Cafe.new(cafe_params)
    cafe.save!
    redirect_to admin_caves_path
  end


  private
    def cafe_params
      params.require(:cafe).permit(:name, :caption, :phone_number, :email, :url)
    end

end
