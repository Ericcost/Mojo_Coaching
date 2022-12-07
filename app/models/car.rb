class Car < ApplicationRecord

  has_many :meetings
  has_many :coachs, through: :meetings, foreign_key: :coach_id
  has_many :drivers, through: :meetings, foreign_key: :driver_id

  has_many :join_table_user_cars
  has_many :users, through: :join_table_user_cars

end
