class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end
    
  def delete
    @review = Review.find(params[:id])
    @review.delete
    redirect_to restaurant_path(@review.restaurant)
  end
end
