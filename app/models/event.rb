class Event < ActiveRecord::Base
  belongs_to :creator, :class_name => "User"

  has_many :invitations, :foreign_key => :attended_events
  has_many :attendees, :through => :invitations, :source => :user
end
