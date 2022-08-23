class WatchlistsController < ApplicationController
  def show
    # @watchlist = Watchlist.where(user: current_user)
    watchlist = current_user.watchlist.movie_watchlists.map(&:movie_id)
    @movies = watchlist.collect { |index| Movie.find(index) }
  end

  def create
    @watchlist = Watchlist.new
    @watchlist.user = current_user
    if @watchlist.save!
      redirect_to :root
    else
      render :new
    end
  end
end
