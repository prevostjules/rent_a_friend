class FriendsController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
    if params[:query].present?
      @friends = Friend.near(params[:query], params[:kms])
    else
      @friends = Friend.all
    end
    @friends_map = @friends.geocoded
    @markers = @friends_map.map do |friend|
      {
        lat: friend.latitude,
        lng: friend.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { friend: friend })
      }
    end
    @tags = ["Fun", "Enthusiastic", "Wine", "Beer", "Crazy", "Playful", "Thrilled", "Dynamic", "Bold", "Foolish", "Democratic"]
  end

  def show
    @friend = Friend.find(params[:id])
    @booking = Booking.new
    @tags = ["Fun", "Enthusiastic", "Wine", "Beer", "Crazy", "Playful", "Thrilled", "Dynamic", "Bold", "Foolish", "Democratic"]
  end
end
