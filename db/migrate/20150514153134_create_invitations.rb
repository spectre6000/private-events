class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :attendee
      t.integer :attended_event

      t.timestamps null: false
    end
  end
end
