class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.integer :trip_id
      t.string :place
      t.string :kind
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
