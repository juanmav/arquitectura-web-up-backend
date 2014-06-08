class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :day_order

      t.timestamps
    end
  end
end
