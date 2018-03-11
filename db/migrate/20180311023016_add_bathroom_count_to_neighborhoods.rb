class AddBathroomCountToNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :bathrooms_count, :integer
  end
end
