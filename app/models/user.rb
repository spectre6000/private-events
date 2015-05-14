class User < ActiveRecord::Base
  has_many :events, :foreign_key => 'creator_id'
  has_many :attended_events, :foreign_key => 'attendee'
end
