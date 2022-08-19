class WatchlistsController < ApplicationController
  def show
    @watchlist = Watchlist.find(params[:id])
  end

  def create
    @watchlist = Watchlist.new
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
