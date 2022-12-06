class Meeting < ApplicationRecord

  belongs_to :coach, class_name: 'User', foreign_key: :coach_id
  belongs_to :driver, class_name: 'User', foreign_key: :driver_id

  
end
