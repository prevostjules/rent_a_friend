class AddAddressToFriends < ActiveRecord::Migration[6.0]
  def change
    add_column :friends, :address, :string
  end
end
