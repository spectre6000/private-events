class User < ActiveRecord::Base
  has_many :events, foreign_key: :creator_id

  has_many :invitations, foreign_key: :attendee_id
  has_many :attended_events, through: :invitations

  def upcoming
    self.attended_events.upcoming
  end

  def past
    self.attended_events.past
  end
end
