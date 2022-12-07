class Feedback < ApplicationRecord

belongs_to :meeting

has_one :coach, through: :meeting, foreign_key: 'coach_id'
has_one :driver, through: :meeting, foreign_key: 'driver_id'

end
