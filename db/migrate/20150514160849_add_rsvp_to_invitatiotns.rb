class AddRsvpToInvitatiotns < ActiveRecord::Migration
  def change
    add_column :invitations, :rsvp, :boolean, default: :false
  end
end
