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


10.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: rand(5..15)), email: Faker::Name.first_name+"@TOPGEAR.com", password: Faker::Internet.password, awards: Faker::Beer.style, price_per_hour: Faker::Number.between(from: 1, to: 50))
end

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

["téléphone", "email", "Rendez-vous", "Pigeon voyageur", "Signaux de fumée"].each do |commean|
  ComMean.create!(communication_mean: commean)
end

100.times do
  JoinTableUserComMean.create!(user_id: User.all.sample.id, com_mean_id: ComMean.all.sample.id)
end

100.times do
  JoinTableUserCar.create!(user_id: User.all.sample.id, car_id: Car.all.sample.id, is_coach: true, is_driver: true)
end

100.times do
  JoinTableUserTrack.create!(user_id: User.all.sample.id, track_id: Track.all.sample.id, is_coach: true, is_driver: true)
end

100.times do
  Availability.create!(user_id: User.all.sample.id, start_date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 365))
end

10.times do
  Meeting.create!(coach_id: User.all.sample.id, driver_id: User.all.sample.id, availability_id: Availability.all.sample.id, duration: 30, meeting_type: rand(0..2), video_url: Faker::Internet.url, com_mean_id: ComMean.all.sample.id, car_id: Car.all.sample.id, track_id: Track.all.sample.id)
end

10.times do
  Feedback.create!(meeting_id: Meeting.all.sample.id, content: Faker::TvShows::RickAndMorty.quote)
end