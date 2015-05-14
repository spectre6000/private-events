class CreateJoinTableRelations < ActiveRecord::Migration
  def change
    add_reference :invitations, :attendee, references: :users, index: true, foreign_key: true
    add_reference :invitations, :attended_event, references: :events, index: true, foreign_key: true
  end
end
