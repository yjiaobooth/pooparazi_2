class AddAddressLongitudeToBathroom < ActiveRecord::Migration[5.0]
  def change
    add_column :bathrooms, :address_longitude, :float
  end
end
