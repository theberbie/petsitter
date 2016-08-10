class AdsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

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
    @review = Review.new
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:id])
    @ad.update_attributes(ad_params)
    redirect_to root_path
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    redirect_to root_path
  end

  private

  def ad_params
    params.require(:ad).permit(:pet_name, :pet_breed, :address_line, :zipcode, :describe)
  end

end
