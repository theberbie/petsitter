class Api::AdsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  #before_filter :find_ads

  def index
    @ads = Ad.all
    render json: @ads

  end

  def show
    @ad = Ad.find(params[:id])
    render json: @ad
  end

  def create
    @ad = Ad.new(ad_params)
    if @ad.save
      render json: {
        status: 200,
        message: "Successfully created ad",
        ad: @ad
        }.to_json

      
    else
      render status:422, json: {

        
        errors: @ad.error
      }.to_json
    end

  end

  def update
    @ad = Ad.find(params[:id])
    if @ad.update(list_params)
      render json:{
        status: 200,
        message: "successfully updated ad",
        ad: @ad

      }.to_json

    else
      render status: 422, json:{
        errors: @ad.errors,
        message: "Could not be updated"

      }.to_json
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    render json:{
      status: 200,
      message: "successfully deleted ad",
      ad: @ad

    }.to_json

  end


  private

  def ad_params
    params.require(:ad).permit(:pet_name, :pet_breed, :address_line, :zipcode, :describe)
  end

#   def find_ads
#     @ads = Ad.find(params[:ads_id])
#   end
end


end