class AddIndexesToFollowings < ActiveRecord::Migration
  def self.up
    add_index :followings, [:user_id, :created_at]
  end

  def self.down
    remove_index :followings, [:user_id, :created_at]
  end
end
