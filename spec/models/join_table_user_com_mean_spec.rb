require 'rails_helper'

RSpec.describe JoinTableUserComMean, type: :model do

    before(:each) do
        @user = User.create(email: "kevlaterreuradmin@yopmail.fr", password: "123456")
        @com_mean= ComMean.create(communication_mean: "Téléphone")
        @join_table_user_com_mean = JoinTableUserComMean.create(user_id: @user.id, com_mean_id: @com_mean.id)
    end

    context "validation" do

      it "is valid with valid attributes" do
        expect(@join_table_user_com_mean).to be_a(JoinTableUserComMean)
        expect(@join_table_user_com_mean).to be_valid
      end
      
    end

    context "associations" do

        describe "join_table_user_com_means" do
          it "should belongs to user" do
            expect(@user.join_table_user_com_means.include?(@join_table_user_com_mean)).to eq(true)
          end
        end

        describe "join_table_user_com_means" do
          it "should belongs to com_mean" do
            expect(@com_mean.join_table_user_com_means.include?(@join_table_user_com_mean)).to eq(true)
          end
        end

    end

    

    
    
end