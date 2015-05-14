class RemoveExtraColumnsFromInvitations < ActiveRecord::Migration
  def change
    remove_column :invitations, :attendee
    remove_column :invitations, :attended_event
  end
end
