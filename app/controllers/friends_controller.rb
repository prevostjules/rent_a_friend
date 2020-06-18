class FriendsController < ApplicationController
  def index
    @friends = Friend.algolia_search(params[:query])
  end

  def show
    @friend = Friend.find(params[:id])
    @booking = Booking.new
  end
end
