class AddUseridToShareItems < ActiveRecord::Migration
  def change
    add_column :share_items, :user_id, :integer
  end
end
