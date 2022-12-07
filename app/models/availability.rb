class Availability < ApplicationRecord

  belongs_to :user

  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :start_date, presence: true
  validates :duration, presence: true, numericality: { only_integer: true }

end
