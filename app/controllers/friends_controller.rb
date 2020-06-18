class FriendsController < ApplicationController
  def index
      @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
    @booking = Booking.new
  end
end
