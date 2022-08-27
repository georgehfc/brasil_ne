class MovieWatchlistsController < ApplicationController
  def show; end

  def create
    @watchlist = current_user.watchlist
    @movie_watchlist = MovieWatchlist.create!(movie_watchlist_params)
    redirect_to watchlist_path(@watchlist)
  end

  def update; end

  def destroy; end

  def review; end

  private

  def movie_watchlist_params
    params.permit(:watchlist_id, :movie_id)
  end
end
