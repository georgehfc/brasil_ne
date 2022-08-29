class MoviesController < ApplicationController
  # Filter
  before_action :set_movie, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @movies = Movie.all
  end

  def show; end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user_id = current_user.id
    if @movie.save!
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def edit; end

  def update
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  # TODO: Collections

  def highlight; end

  def top; end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :year, :duration, :location, :synopsis, :poster, genre: [])
  end
end
