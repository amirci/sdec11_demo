class ReviewsController < ApplicationController
  
  def create
    @movie = Movie.find(params[:movie_id])
    @movie.reviews.create(params[:review])
    @reviews = Review.all
    redirect_to @movie
  end
  
end
