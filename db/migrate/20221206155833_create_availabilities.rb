class CreateAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :availabilities do |t|
      t.belongs_to :user, index: true
      t.datetime :start_date
      t.integer :duration, default: 30
      t.integer :price_per_slot
      t.boolean :is_available, default: true

      t.timestamps
    end
  end
end
