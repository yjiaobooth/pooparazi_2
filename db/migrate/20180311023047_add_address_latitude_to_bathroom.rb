class AddAddressLatitudeToBathroom < ActiveRecord::Migration[5.0]
  def change
    add_column :bathrooms, :address_latitude, :float
  end
end
