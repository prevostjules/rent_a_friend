class AddPriceToFriends < ActiveRecord::Migration[6.0]
  def change
    add_column :friends, :price, :integer
  end
end
