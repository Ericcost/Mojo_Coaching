class CreateJoinTableUserCars < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_user_cars do |t|
      t.belongs_to :user, index: true
      t.belongs_to :car, index: true

      t.timestamps
    end
  end
end
