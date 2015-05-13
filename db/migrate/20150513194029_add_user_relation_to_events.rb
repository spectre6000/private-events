class AddUserRelationToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :creator, references: :users, index: true, foreign_key: true
  end
end
