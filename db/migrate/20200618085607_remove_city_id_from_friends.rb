class RemoveCityIdFromFriends < ActiveRecord::Migration[6.0]
  def change
    remove_column :friends, :city_id, :bigint
  end
end
