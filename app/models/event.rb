class Event < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :invitations, foreign_key: :attended_event_id
  has_many :attendees, through: :invitations

  scope :upcoming, -> { where("Date >= ?", Date.today).order('Date ASC') }
  scope :past, -> { where("Date < ?", Date.today).order('Date DESC') }

end
