class FriendsController < ApplicationController
  def index
    if params[:cities].present?
      @friends = Friend.where(city: params[:cities])
    else
      @friends = Friend.all
    end
  end

  def show
    @friend = Friend.find(params[:id])
    @booking = Booking.new
  end
end
