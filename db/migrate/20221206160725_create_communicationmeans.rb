class CreateCommunicationmeans < ActiveRecord::Migration[7.0]
  def change
    create_table :communicationmeans do |t|
      t.string :communication_mean

      t.timestamps
    end
  end
end
