class Meeting < ApplicationRecord

  after_create :new_meeting_email_coach
  after_create :new_meeting_email_driver

  enum :meeting_type, [ :first_contact, :coaching, :debrief ]
  enum :meeting_status, [ :unpaid, :paid ]

  belongs_to :coach, class_name: 'User', foreign_key: 'coach_id'
  belongs_to :driver, class_name: 'User', foreign_key: 'driver_id'

  belongs_to :availability
  belongs_to :com_mean
  belongs_to :car
  belongs_to :track

  has_many :feedbacks

  validates :driver_id, presence: true, numericality: { only_integer: true }
  validates :coach_id, presence: true, numericality: { only_integer: true }
  validates :availability_id, presence: true, numericality: { only_integer: true }
  validates :meeting_type, presence: true
  validates :meeting_status, presence: true
  validates :com_mean_id, presence: true, numericality: { only_integer: true }

  def new_meeting_email_coach
    MeetingMailer.new_meeting_email_coach(self).deliver_now
  end

  def new_meeting_email_driver
    MeetingMailer.new_meeting_email_driver(self).deliver_now
  end

end