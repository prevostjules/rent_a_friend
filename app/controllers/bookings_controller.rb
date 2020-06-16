class BookingsController < ApplicationController

  def index
    @user = current_user
    @bookings = Booking.where(user: @user)
  end

  def show

  end

  def create

  end

  def edit
  end

  def update

  end

  def delete

  end
end
