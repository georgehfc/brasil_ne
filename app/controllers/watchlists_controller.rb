class WatchlistsController < ApplicationController
  def show
    @watchlist = Watchlist.where(user: current_user)
  end

  def create
    @watchlist = Watchlist.new
    @watchlist.user = current_user
    if @watchlist.save!
      redirect_to movies_path
    else
      render :new
    end
  end
end
