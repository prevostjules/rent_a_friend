class FriendsController < ApplicationController
  def index
    @friends = Friend.algolia_search(params[:query])
    @tags = ["Fun", "Enthusiastic", "Wine", "Beer", "Crazy", "Playful", "Thrilled", "Dynamic", "Bold", "Foolish", "Democratic"]
  end

  def show
    @friend = Friend.find(params[:id])
    @booking = Booking.new
    @tags = ["Fun", "Enthusiastic", "Wine", "Beer", "Crazy", "Playful", "Thrilled", "Dynamic", "Bold", "Foolish", "Democratic"]
  end
end
