class User < ActiveRecord::Base
  has_many :events, :foreign_key => 'creator_id'

  has_many :invitations, :foreign_key => 'attendee'
  has_many :attended_events, :through => 'invitations', :source => :event
end
