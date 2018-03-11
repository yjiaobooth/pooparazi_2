class AddCenterAddressFormattedAddressToNeighborhood < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :center_address_formatted_address, :string
  end
end
