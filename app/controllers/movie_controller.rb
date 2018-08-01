class MovieController < ApplicationController
  def index
  	@movies = Movie.new
  end

  def create
  	movie = Movie.create(params.require(:movie).permit(:title, :release_year, :director))
  end

  def show
  	@movies = Movie.all
  end
end
