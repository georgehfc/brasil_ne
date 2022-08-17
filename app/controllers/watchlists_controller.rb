class WatchlistsController < ApplicationController
  def index
    @watchlists = Watchlist.all
  end

  def show
    @watchlist = Watchlist.find(params[:id])
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @watchlist = Watchlist.new
    @watchlist.user = current_user
    @watchlist.movie = @movie
  end

  def create
    @watchlist = Watchlist.new(watchlist_params)
    @movie = Movie.find(params[:movie_id])
    @watchlist.user = current_user
    @watchlist.movie = @movie
    if @watchlist.save!
      redirect_to my_watchlist_path
    else
      render :new
    end
  end

  def my_watchlist
    @watchlist = Watchlist.where(user: current_user)
  end

  private

  def watchlist_params
    # params.require(:watchlist).permit(:rating, :review)
  end
end
