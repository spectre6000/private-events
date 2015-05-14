class Event < ActiveRecord::Base
  belongs_to :creator, :class_name => "User"
  has_many :attendees, :foreign_key => 'attended_events'
end
