class CreateJoinTableUserComMeans < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_user_com_means do |t|
      t.belongs_to :user, index: true
      t.belongs_to :com_mean, index: true

      t.timestamps
    end
  end
end
