class ReviewsController < ApplicationController
 before_action :authenticate_user!

  def create
    @ad = Ad.find(params[:ad_id])
    @ad.reviews.create(review_params.merge(user: current_user))
    redirect_to ad_path(@ad)
  end

  private

  def review_params
    params.require(:review).permit(:message, :rating)
  end
end
