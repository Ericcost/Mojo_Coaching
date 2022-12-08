require 'rails_helper'

RSpec.describe JoinTableUserTrack, type: :model do

    before(:each) do
        @user = User.create(email: "kevlaterreuradmin@yopmail.fr", password: "123456")
        @track = Track.create(country: "France", city: "Orléans", length: 2534)
        @join_table_user_track = JoinTableUserTrack.create(user_id: @user.id, track_id: @track.id)
    end

    context "validation" do

      it "is valid with valid attributes" do
        expect(@join_table_user_track).to be_a(JoinTableUserTrack)
        expect(@join_table_user_track).to be_valid
      end
    end

    context "associations" do

        describe "join_table_user_tracks" do
          it "should belongs to user" do
            expect(@user.join_table_user_tracks.include?(@join_table_user_track)).to eq(true)
          end
        end

        describe "join_table_user_tracks" do
          it "should belongs to track" do
            expect(@track.join_table_user_tracks.include?(@join_table_user_track)).to eq(true)
          end
        end

    end

    

    
    
end