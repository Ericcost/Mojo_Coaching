# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Car.destroy_all
Track.destroy_all
ComMean.destroy_all
JoinTableUserCar.destroy_all
JoinTableUserTrack.destroy_all
JoinTableUserComMean.destroy_all
Availability.destroy_all
Meeting.destroy_all
Feedback.destroy_all


10.times do |index|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: rand(5..15)), email: "user#{index+1}@gmail.com", password: "123456", awards: Faker::Beer.style)
end

User.create!(first_name: "User", last_name: "Admin", description: Faker::Lorem.sentence(word_count: rand(5..15)), email: "admin@gmail.com", password: "123456", awards: Faker::Beer.style, is_admin: true)

cars_list = ["Formule Ford", "Formule 4", "Formule Renault", "Formule Regional", "Formule 3", "Formule 2", "Formule 1", "Voiture de Tourisme", "GT4", "GT3", "GT2", "LMP4", "LMP3", "LMP2", "LMP1"]
cars_list.each do |car|
  Car.create!(model: car)
end

tracks_list = {
  "France" => ["Magny Cours", "Le Mans", "Le Castellet", "Dijon", "Nogaro", "Albi", "Val de Vienne", "Charade", "Lédenon", "Dreux", "La Ferté Gaucher", "La Bresse", "Le Mas du Clos", "Alès", "Carole", "Issoire", "Les Ecuyers", "Fay de Bretagne", "Fontenay le Comte", "Haute Saintonge", "La Chatre", "Ladoux", "Lurcy Lévis", "Le Luc", "Mérignac", "Mornay", "Pau"],
  "Europe" => ["Barcelone", "Imola", "Monza", "Spa Francorchamps", "Hockenheim", "Nurburgring", "Portimao", "Misano", "Hungaroring", "Navarra", "Brands Hatch", "Silverstone", "Monaco"]
}
tracks_list.each do |key, value|
  value.each_with_index do |value|
    Track.create!(location: key, name: value)
  end
end

com_mean_list = ["Téléphone", "Visioconférence", "Rendez-vous physique"]
com_mean_list.each do |commean|
  ComMean.create!(communication_mean: commean)
end

User.all.each do |user|
  JoinTableUserComMean.create!(user_id: user.id, com_mean_id: ComMean.all.sample.id)
end

User.all.each do |user|
  JoinTableUserCar.create!(user_id: user.id, car_id: Car.all.sample.id, is_coach: true, is_driver: true)
end

User.all.each do |user|
  JoinTableUserTrack.create!(user_id: user.id, track_id: Track.all.sample.id, is_coach: true, is_driver: true)
end

random_slot = []
start_time = Time.new(2023, 1, 1, 8, 0, 0)
end_time = Time.new(2023, 12, 31, 17, 0, 0)
time_interval = start_time
while time_interval < end_time
  random_slot << time_interval
  time_interval += 30 * 60
end

User.all.each do |user|
  Availability.create!(user_id: user.id, start_date: random_slot.sample, price_per_slot: rand(5..50))
end

User.all.each do |user|
  @new_availability = Availability.create!(user_id: user.id, start_date: random_slot.sample, price_per_slot: rand(5..50))
  Availability.create!(user_id: user.id, start_date: @new_availability.start_date + 30.minute, price_per_slot: @new_availability.price_per_slot)
end

5.times do |index|
  @new_meeting = Meeting.create!(coach_id: index + 1, driver_id: index + 2, availability_id: Availability.where(user_id: index + 1).sample.id, duration: 30, meeting_type: 0, meeting_status: 1, video_url: Faker::Internet.url, com_mean_id: JoinTableUserComMean.where(user_id: index + 1).sample.com_mean_id, car_id: JoinTableUserCar.where(user_id: index + 1).sample.car_id, track_id: JoinTableUserTrack.where(user_id: index + 1).sample.track_id)
  Availability.find(@new_meeting.availability_id).update(is_available: false)
end

Meeting.where(meeting_type: "coaching").each do |meeting|
  Feedback.create!(meeting_id: meeting.id, content: Faker::TvShows::RickAndMorty.quote)
end