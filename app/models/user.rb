class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :coach_meetings, class_name: 'Meeting', foreign_key: 'coach_id'
  has_many :driver_meetings, class_name: 'Meeting', foreign_key: 'driver_id'

  has_many :join_table_user_com_means
  has_many :com_means, through: :join_table_user_com_means

  has_many :join_table_user_cars
  has_many :cars, through: :join_table_user_cars
  has_many :meetings, through: :cars

  has_many :join_table_user_tracks
  has_many :tracks, through: :join_table_user_tracks
  has_many :meetings, through: :tracks

  has_many :feedbacks, through: :meetings

  has_many :availabilities

end
