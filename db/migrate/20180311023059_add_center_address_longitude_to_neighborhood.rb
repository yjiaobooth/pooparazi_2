class AddCenterAddressLongitudeToNeighborhood < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :center_address_longitude, :float
  end
end
