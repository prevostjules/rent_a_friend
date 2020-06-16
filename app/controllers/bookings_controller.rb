class BookingsController < ApplicationController

  def index
    @user = current_user
    @bookings = Booking.where(user: @user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @friend = Friend.new(params[:friend_id])
    @booking.friend = @friend
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def edit
  end

  def update

  end

  def delete

  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
