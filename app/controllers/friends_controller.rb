class FriendsController < ApplicationController
  def index
      @friends = Friend.geocoded

      @markers = @friends.map do |friend|
        {
          lat: friend.latitude,
          lng: friend.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { friend: friend }),
        }
      end
  end

  def show
    @friend = Friend.find(params[:id])
    @booking = Booking.new
  end
end
