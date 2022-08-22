class MovieWatchlistsController < ApplicationController
  def show
    movies = current_user.watchlist.movie_watchlists.map(&:movie_id)
    @movie_watchlists = movies.collect { |index| Movie.find(index) }
  end

  def create
    @watchlist = Watchlist.where(user: current_user)
    @movie = Movie.find(params[:movie_id])
    @movie_watchlist = MovieWatchlist.new(movie_watchlist_params)
    @movie_watchlist.watchlist_id = @watchlist.ids.join
    @movie_watchlist.movie_id = @movie.id
    @movie_watchlist.save!
  end

  def update; end

  def destroy; end

  def review; end

  private

  def movie_watchlist_params
    params.permit(:watchlist_id, :movie_id)
  end
end
