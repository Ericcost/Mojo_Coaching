class Feedback < ApplicationRecord

belongs_to :meeting

has_many :coachs, through: :meetings, foreign_key: :coach_id
has_many :drivers, through: :meetings, foreign_key: :driver_id

end
