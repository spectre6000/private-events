class FixIt < ActiveRecord::Migration
  def change
    remove_column :events, :users_id
  end
end
