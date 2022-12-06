class CreateCommunicationMeans < ActiveRecord::Migration[7.0]
  def change
    create_table :communication_means do |t|
      t.string :communication_mean

      t.timestamps
    end
  end
end
