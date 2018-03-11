class AddCommentCountToBathrooms < ActiveRecord::Migration[5.0]
  def change
    add_column :bathrooms, :comments_count, :integer
  end
end
