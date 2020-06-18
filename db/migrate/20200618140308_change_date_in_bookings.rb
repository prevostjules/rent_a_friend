class ChangeDateInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :starting_date, :string
    change_column :bookings, :ending_date, :string
  end
end
