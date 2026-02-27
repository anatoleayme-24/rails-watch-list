class PagesController < ApplicationController
  def home
    @movie_of_the_day = Movie.order("RANDOM()").first
    @random_movies = Movie.order("RANDOM()").limit(12)
  end
end
