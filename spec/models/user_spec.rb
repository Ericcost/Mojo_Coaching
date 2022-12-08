require 'rails_helper'

    RSpec.describe User, type: :model do

        before(:each) do
            @user = User.create(email: "kevlaterreuradmin@yopmail.fr", password: "123456")
        end

        context "validation" do

            it "is valid with valid attributes" do
              expect(@user).to be_a(User)
              expect(@user).to be_valid
            end
    
            describe "#email" do
              it "should not be valid with a wrong email format" do
                bad_user = User.create(email: "kevlaterreuradmin", password: "123456")
                expect(bad_user).not_to be_valid
                expect(bad_user.errors.include?(:email)).to eq(true)
              end
            end

            describe "#password" do
              it "should not be valid with a wrong password length" do
                bad_user = User.create(email: "kevlaterreuradmin@yopmail.fr", password: "1234")
                expect(bad_user).not_to be_valid
                expect(bad_user.errors.include?(:password)).to eq(true)
              end
            end
    
        end

        context "associations" do

          describe "availabilities" do
            it "should have_many availabilities" do
              availability = Availability.create(user: @user)
              expect(@user.availabilities.include?(availability)).to eq(true)
            end
          end

          describe "JoinTableUserTracks" do
            it "should have_many JoinTableUserTracks" do
              join_table_user_track = JoinTableUserTrack.create(user: @user)
              expect(@user.join_table_user_tracks.include?(join_table_user_track)).to eq(true)
            end
          end

          describe "JoinTableUserCars" do
            it "should have_many JoinTableUserCars" do
              join_table_user_car = JoinTableUserCar.create(user: @user)
              expect(@user.join_table_user_cars.include?(join_table_user_car)).to eq(true)
            end
          end

          describe "JoinTableUserComMeans" do
            it "should have_many JoinTableUserComMeans" do
              join_table_user_com_mean = JoinTableUserComMean.create(user: @user)
              expect(@user.join_table_user_com_means.include?(join_table_user_com_mean)).to eq(true)
            end
          end

          describe "Meetings" do
            it "should have_many Meetings" do
              meeting = Meeting.create(user: @user)
              expect(@user.meetings.include?(meeting)).to eq(true)
            end
          end

        end

        
        
    end