class MoviesController < ApplicationController
  # Filter
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @movies = policy_scope(Movie).search_by_location(params[:query])
    else
      @movies = policy_scope(Movie)
    end
  end

  def show; end

  def new
    @movie = Movie.new
    authorize @movie
  end

  def create
    @movie = Movie.new(movie_params)
    authorize @movie
    @movie.save
    @movie.user = current_user
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def edit; end

  def update
    @movie.update(movie_params)
    redirect_to plant_path(@movie)
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  #TODO Collections

  def set_movie
    @movie = Movie.find(params[:id])
    authorize @movie
  end

  def movie_params
    params.require(:movie).permit(:title, :year, :duration, :location, :synopsis, :genre, :image_url)
  end
end
