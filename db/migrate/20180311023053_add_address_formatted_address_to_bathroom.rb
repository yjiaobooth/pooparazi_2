class AddAddressFormattedAddressToBathroom < ActiveRecord::Migration[5.0]
  def change
    add_column :bathrooms, :address_formatted_address, :string
  end
end
