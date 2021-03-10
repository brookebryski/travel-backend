class CreateTripHistory < ActiveRecord::Migration[6.0]
  def change
    create_table :trip_histories do |t|
      t.integer :trip_id
      t.integer :user_id
    end
  end
end
