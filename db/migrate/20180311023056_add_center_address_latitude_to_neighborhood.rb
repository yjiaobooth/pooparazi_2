class AddCenterAddressLatitudeToNeighborhood < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :center_address_latitude, :float
  end
end
