class AdsController < ApplicationController

  def new
    @ad = Ad.new
  end

  def index
    @ads = Ad.all
  end

  def create
    Ad.create(ad_params)
    redirect_to root_path
  end

  private

  def ad_params
    params.require(:ad).permit(:pet_name, :pet_breed, :address_line, :zipcode, :describe)
  end

end
