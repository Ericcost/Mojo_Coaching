class CreateJoinTableUserCommunicationMeans < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_user_communication_means do |t|
      t.belongs_to :user, index: true
      t.belongs_to :communication_mean, index: true

      t.timestamps
    end
  end
end
