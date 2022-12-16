class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :welcome_send

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
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

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
