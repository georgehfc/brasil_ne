class MovieWatchlistsController < ApplicationController
  def show; end

  def create
    @watchlist = Watchlist.where(user: current_user)
    @movie = Movie.find(params[:movie])
    @movie_watchlist = MovieWatchlist.new
    raise
    @movie_watchlist.watchlist = @watchlist
    @movie_watchlist.save!
    @watchlist.movie_watchlist = @movie_watchlist
  end

  def update; end

  def destroy; end

  def review; end
end
