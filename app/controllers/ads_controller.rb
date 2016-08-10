class AdsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @ad = Ad.new
  end

  def index
    @ads = Ad.all
  end

  def create
    current_user.ads.create(ad_params)
    redirect_to root_path
  end

  def show
    @ad = Ad.find(params[:id])
  end

  private

  def ad_params
    params.require(:ad).permit(:pet_name, :pet_breed, :address_line, :zipcode, :describe)
  end

end
