class BookingsController < ApplicationController

  before_action :set_booking, only: [ :show, :edit, :update, :destroy]

  def index
    @user = current_user
    @bookings = Booking.where(user: @user)
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.address = params[:address]
    @friend = Friend.find(params[:friend_id])
    @booking.friend = @friend
    @booking.user = current_user
    if @booking.save
      redirect_to friend_path(@friend, anchor: "booking-#{@booking.id}")
    else
      render 'friends/show'
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date, :address)
  end
end
