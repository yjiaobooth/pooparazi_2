class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.boolean :helpful_or_not
      t.integer :bathroom_id

      t.timestamps

    end
  end
end
