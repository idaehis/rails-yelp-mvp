class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:rating, :content)
  end
end
