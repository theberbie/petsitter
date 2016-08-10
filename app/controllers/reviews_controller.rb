class ReviewsController < ApplicationController
 
  def show
    @ad = Ad.find(params[:id])
    @review = Review.new
  end

end