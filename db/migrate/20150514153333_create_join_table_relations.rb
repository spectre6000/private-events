class CreateJoinTableRelations < ActiveRecord::Migration
  def change
    add_reference :users, :attendee, references: :users, index: true, foreign_key: true
    add_reference :events, :attended_event, references: :events, index: true, foreign_key: true
  end
end
