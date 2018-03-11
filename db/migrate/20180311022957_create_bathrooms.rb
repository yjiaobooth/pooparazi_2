class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
      t.string :address
      t.integer :neiborhood_id
      t.text :notes
      t.integer :comment_id
      t.text :public_or_not
      t.integer :rating_easy_to_find

      t.timestamps

    end
  end
end
