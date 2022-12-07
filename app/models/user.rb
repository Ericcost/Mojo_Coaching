class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates

  validates :email, presence: true, uniqueness: true, confirmation: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/i, message: "only allows email format"}
  validates :password, presence: true, length: {minimum: 6}
  
  has_many :coach_meetings, class_name: 'Meeting', foreign_key: 'coach_id'
  has_many :coach_feedbacks, :through => :coach_meetings, :source => 'feedbacks'

  has_many :driver_meetings, class_name: 'Meeting', foreign_key: 'driver_id'
  has_many :driver_feedbacks, :through => :driver_meetings, :source => 'feedbacks'

  has_many :join_table_user_com_means
  has_many :com_means, through: :join_table_user_com_means

  has_many :join_table_user_cars
  has_many :cars, through: :join_table_user_cars

  has_many :join_table_user_tracks
  has_many :tracks, through: :join_table_user_tracks

  has_many :availabilities

end
