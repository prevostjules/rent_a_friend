class FriendsController < ApplicationController
  def index
    @friends = Friend.near(params[:query], 20)
    @tags = ["Fun", "Enthusiastic", "Wine", "Beer", "Crazy", "Playful", "Thrilled", "Dynamic", "Bold", "Foolish", "Democratic"]
  end

  def show
    @friend = Friend.find(params[:id])
    @booking = Booking.new
    @tags = ["Fun", "Enthusiastic", "Wine", "Beer", "Crazy", "Playful", "Thrilled", "Dynamic", "Bold", "Foolish", "Democratic"]
  end
end
