class CorrectEventRelation < ActiveRecord::Migration
  def change
    rename_column :events, :users_id, :creator_id
  end
end
