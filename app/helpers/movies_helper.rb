module MoviesHelper
  
  def average_stars(movie)
    return movie.reviews.average(:stars).round(1) unless movie.reviews.empty? 
    "n/a"
  end
  
end
